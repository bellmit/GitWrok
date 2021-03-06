#Reactor详解

pocher 2019-05-06 18:27:32   59916   收藏 130
分类专栏： IO 文章标签： reactor IO NIO 面试 java
##reactor 是什么
![](https://imgconvert.csdnimg.cn/aHR0cHM6Ly91c2VyLWdvbGQtY2RuLnhpdHUuaW8vMjAxOC8xMS8xLzE2NmNjYmJkYzY1NGQ2ZGM?x-oss-process=image/format,png)
为何要用，能解决什么问题

如何用，更好的方式

其他事件处理模式

一、Reactor 是什么
关于reactor 是什么，我们先从wiki上看下:

The reactor design pattern is an event handling pattern for handling service requests delivered concurrently to a service handler by one or more inputs. The service handler then demultiplexes the incoming requests and dispatches them synchronously to the associated request handlers.

从上述文字中我们可以看出以下关键点 ：

事件驱动（event handling）

可以处理一个或多个输入源（one or more inputs）

通过Service Handler同步的将输入事件（Event）采用多路复用分发给相应的Request Handler（多个）处理



自POSA2 中的关于Reactor Pattern 介绍中，我们了解了Reactor 的处理方式:

同步的等待多个事件源到达（采用select()实现）

将事件多路分解以及分配相应的事件服务进行处理，这个分派采用server集中处理（dispatch）

分解的事件以及对应的事件服务应用从分派服务中分离出去（handler）

 

关于Reactor Pattern 的OMT 类图设计:



 

二、为何要用Reactor
常见的网络服务中，如果每一个客户端都维持一个与登陆服务器的连接。那么服务器将维护多个和客户端的连接以出来和客户端的contnect 、read、write ，特别是对于长链接的服务，有多少个c端，就需要在s端维护同等的IO连接。这对服务器来说是一个很大的开销。

1、BIO
比如我们采用BIO的方式来维护和客户端的连接：

// 主线程维护连接
  public void run() {
      try {
          while (true) {
              Socket socket = serverSocket.accept();
              //提交线程池处理
              executorService.submit(new Handler(socket));
          }
      } catch (Exception e) {
          e.printStackTrace();
      }
  }
​
  // 处理读写服务
  class Handler implements Runnable {
      public void run() {
          try {
              //获取Socket的输入流，接收数据
              BufferedReader buf = new BufferedReader(new InputStreamReader(socket.getInputStream()));
              String readData = buf.readLine();
              while (readData != null) {
                  readData = buf.readLine();
                  System.out.println(readData);
              }
          } catch (Exception e) {
              e.printStackTrace();
          }
      }
  }
 

很明显，为了避免资源耗尽，我们采用线程池的方式来处理读写服务。但是这么做依然有很明显的弊端：

同步阻塞IO，读写阻塞，线程等待时间过长

在制定线程策略的时候，只能根据CPU的数目来限定可用线程资源，不能根据连接并发数目来制定，也就是连接有限制。否则很难保证对客户端请求的高效和公平。

多线程之间的上下文切换，造成线程使用效率并不高，并且不易扩展

状态数据以及其他需要保持一致的数据，需要采用并发同步控制

2、NIO
那么可以有其他方式来更好的处理么，我们可以采用NIO来处理，NIO中支持的基本机制:

非阻塞的IO读写

基于IO事件进行分发任务，同时支持对多个fd的监听

我们看下NIO 中实现相关方式:

public NIOServer(int port) throws Exception {
      selector = Selector.open();
      serverSocket = ServerSocketChannel.open();
      serverSocket.socket().bind(new InetSocketAddress(port));
      serverSocket.configureBlocking(false);
      serverSocket.register(selector, SelectionKey.OP_ACCEPT);
  }
​
  @Override
  public void run() {
      while (!Thread.interrupted()) {
          try {
              //阻塞等待事件
              selector.select();
              // 事件列表
              Set selected = selector.selectedKeys();
              Iterator it = selected.iterator();
              while (it.hasNext()) {
                  it.remove();
                  //分发事件
                  dispatch((SelectionKey) (it.next()));
              }
          } catch (Exception e) {
​
          }
      }
  }
​
  private void dispatch(SelectionKey key) throws Exception {
      if (key.isAcceptable()) {
          register(key);//新链接建立，注册
      } else if (key.isReadable()) {
          read(key);//读事件处理
      } else if (key.isWritable()) {
          wirete(key);//写事件处理
      }
  }
​
  private void register(SelectionKey key) throws Exception {
      ServerSocketChannel server = (ServerSocketChannel) key
              .channel();
      // 获得和客户端连接的通道
      SocketChannel channel = server.accept();
      channel.configureBlocking(false);
      //客户端通道注册到selector 上
      channel.register(this.selector, SelectionKey.OP_READ);
  }
 

我们可以看到上述的NIO例子已经差不多拥有reactor的影子了

基于事件驱动-> selector（支持对多个socketChannel的监听）

统一的事件分派中心-> dispatch

事件处理服务-> read & write

 

事实上NIO已经解决了上述BIO暴露的1&2问题了，服务器的并发客户端有了量的提升，不再受限于一个客户端一个线程来处理，而是一个线程可以维护多个客户端（selector 支持对多个socketChannel 监听）。

但这依然不是一个完善的Reactor Pattern ,首先Reactor 是一种设计模式，好的模式应该是支持更好的扩展性，显然以上的并不支持，另外好的Reactor Pattern 必须有以下特点：

更少的资源利用，通常不需要一个客户端一个线程

更少的开销，更少的上下文切换以及locking

能够跟踪服务器状态

能够管理handler 对event的绑定

那么好的Reactor Pattern应该是怎样的？

三、Reactor
在应用Java NIO构建Reactor Pattern中，大神 Doug Lea（让人无限景仰的java 大神）在“Scalable IO in Java”中给了很好的阐述。我们采用大神介绍的3种Reactor 来分别介绍。

首先我们基于Reactor Pattern 处理模式中，定义以下三种角色:

Reactor 将I/O事件分派给对应的Handler

Acceptor 处理客户端新连接，并分派请求到处理器链中

Handlers 执行非阻塞读/写 任务

 

1、单Reactor单线程模型


我们看代码的实现方式:

  /**
    * 等待事件到来，分发事件处理
    */
  class Reactor implements Runnable {
​
      private Reactor() throws Exception {
​
          SelectionKey sk =
                  serverSocket.register(selector,
                          SelectionKey.OP_ACCEPT);
          // attach Acceptor 处理新连接
          sk.attach(new Acceptor());
      }
​
      public void run() {
          try {
              while (!Thread.interrupted()) {
                  selector.select();
                  Set selected = selector.selectedKeys();
                  Iterator it = selected.iterator();
                  while (it.hasNext()) {
                      it.remove();
                      //分发事件处理
                      dispatch((SelectionKey) (it.next()));
                  }
              }
          } catch (IOException ex) {
              //do something
          }
      }
​
      void dispatch(SelectionKey k) {
          // 若是连接事件获取是acceptor
          // 若是IO读写事件获取是handler
          Runnable runnable = (Runnable) (k.attachment());
          if (runnable != null) {
              runnable.run();
          }
      }
​
  }
  
  /**
    * 连接事件就绪,处理连接事件
    */
  class Acceptor implements Runnable {
      @Override
      public void run() {
          try {
              SocketChannel c = serverSocket.accept();
              if (c != null) {// 注册读写
                  new Handler(c, selector);
              }
          } catch (Exception e) {
​
          }
      }
  }
这是最基本的单Reactor单线程模型。其中Reactor线程，负责多路分离套接字，有新连接到来触发connect 事件之后，交由Acceptor进行处理，有IO读写事件之后交给hanlder 处理。

Acceptor主要任务就是构建handler ，在获取到和client相关的SocketChannel之后 ，绑定到相应的hanlder上，对应的SocketChannel有读写事件之后，基于racotor 分发,hanlder就可以处理了（所有的IO事件都绑定到selector上，有Reactor分发）。

该模型 适用于处理器链中业务处理组件能快速完成的场景。不过，这种单线程模型不能充分利用多核资源，所以实际使用的不多。

 

2、单Reactor多线程模型


相对于第一种单线程的模式来说，在处理业务逻辑，也就是获取到IO的读写事件之后，交由线程池来处理，这样可以减小主reactor的性能开销，从而更专注的做事件分发工作了，从而提升整个应用的吞吐。

我们看下实现方式：

  /**
    * 多线程处理读写业务逻辑
    */
  class MultiThreadHandler implements Runnable {
      public static final int READING = 0, WRITING = 1;
      int state;
      final SocketChannel socket;
      final SelectionKey sk;
​
      //多线程处理业务逻辑
      ExecutorService executorService = Executors.newFixedThreadPool(Runtime.getRuntime().availableProcessors());
​
​
      public MultiThreadHandler(SocketChannel socket, Selector sl) throws Exception {
          this.state = READING;
          this.socket = socket;
          sk = socket.register(selector, SelectionKey.OP_READ);
          sk.attach(this);
          socket.configureBlocking(false);
      }
​
      @Override
      public void run() {
          if (state == READING) {
              read();
          } else if (state == WRITING) {
              write();
          }
      }
​
      private void read() {
          //任务异步处理
          executorService.submit(() -> process());
​
          //下一步处理写事件
          sk.interestOps(SelectionKey.OP_WRITE);
          this.state = WRITING;
      }
​
      private void write() {
          //任务异步处理
          executorService.submit(() -> process());
​
          //下一步处理读事件
          sk.interestOps(SelectionKey.OP_READ);
          this.state = READING;
      }
​
      /**
        * task 业务处理
        */
      public void process() {
          //do IO ,task,queue something
      }
  }
 

3、多Reactor多线程模型
 



第三种模型比起第二种模型，是将Reactor分成两部分，

mainReactor负责监听server socket，用来处理新连接的建立，将建立的socketChannel指定注册给subReactor。

subReactor维护自己的selector, 基于mainReactor 注册的socketChannel多路分离IO读写事件，读写网 络数据，对业务处理的功能，另其扔给worker线程池来完成。

 

我们看下实现方式:

  /**
    * 多work 连接事件Acceptor,处理连接事件
    */
  class MultiWorkThreadAcceptor implements Runnable {
​
      // cpu线程数相同多work线程
      int workCount =Runtime.getRuntime().availableProcessors();
      SubReactor[] workThreadHandlers = new SubReactor[workCount];
      volatile int nextHandler = 0;
​
      public MultiWorkThreadAcceptor() {
          this.init();
      }
​
      public void init() {
          nextHandler = 0;
          for (int i = 0; i < workThreadHandlers.length; i++) {
              try {
                  workThreadHandlers[i] = new SubReactor();
              } catch (Exception e) {
              }
​
          }
      }
​
      @Override
      public void run() {
          try {
              SocketChannel c = serverSocket.accept();
              if (c != null) {// 注册读写
                  synchronized (c) {
                      // 顺序获取SubReactor，然后注册channel 
                      SubReactor work = workThreadHandlers[nextHandler];
                      work.registerChannel(c);
                      nextHandler++;
                      if (nextHandler >= workThreadHandlers.length) {
                          nextHandler = 0;
                      }
                  }
              }
          } catch (Exception e) {
          }
      }
  }
 
  /**
    * 多work线程处理读写业务逻辑
    */
  class SubReactor implements Runnable {
      final Selector mySelector;
​
      //多线程处理业务逻辑
      int workCount =Runtime.getRuntime().availableProcessors();
      ExecutorService executorService = Executors.newFixedThreadPool(workCount);
​
​
      public SubReactor() throws Exception {
          // 每个SubReactor 一个selector 
          this.mySelector = SelectorProvider.provider().openSelector();
      }
​
      /**
        * 注册chanel
        *
        * @param sc
        * @throws Exception
        */
      public void registerChannel(SocketChannel sc) throws Exception {
          sc.register(mySelector, SelectionKey.OP_READ | SelectionKey.OP_CONNECT);
      }
​
      @Override
      public void run() {
          while (true) {
              try {
              //每个SubReactor 自己做事件分派处理读写事件
                  selector.select();
                  Set<SelectionKey> keys = selector.selectedKeys();
                  Iterator<SelectionKey> iterator = keys.iterator();
                  while (iterator.hasNext()) {
                      SelectionKey key = iterator.next();
                      iterator.remove();
                      if (key.isReadable()) {
                          read();
                      } else if (key.isWritable()) {
                          write();
                      }
                  }
​
              } catch (Exception e) {
​
              }
          }
      }
​
      private void read() {
          //任务异步处理
          executorService.submit(() -> process());
      }
​
      private void write() {
          //任务异步处理
          executorService.submit(() -> process());
      }
​
      /**
        * task 业务处理
        */
      public void process() {
          //do IO ,task,queue something
      }
  }
​
第三种模型中，我们可以看到，mainReactor 主要是用来处理网络IO 连接建立操作，通常一个线程就可以处理，而subReactor主要做和建立起来的socket做数据交互和事件业务处理操作，它的个数上一般是和CPU个数等同，每个subReactor一个县城来处理。

此种模型中，每个模块的工作更加专一，耦合度更低，性能和稳定性也大量的提升，支持的可并发客户端数量可达到上百万级别。

关于此种模型的应用，目前有很多优秀的矿建已经在应用了，比如mina 和netty 等。上述中去掉线程池的第三种形式的变种，也 是Netty NIO的默认模式。下一节我们将着重讲解netty的架构模式。

 

四、事件处理模式
在 Douglas Schmidt 的大作《POSA2》中有关于事件处理模式的介绍，其中有四种事件处理模式:

Reactor　　

Proactor　　

Asynchronous Completion Token　　

Acceptor-Connector　　

1. Proactor
本文介绍的Reactor就是其中一种，而Proactor的整体结构和reacotor的处理方式大同小异，不同的是Proactor采用的是异步非阻塞IO的方式实现，对数据的读写由异步处理，无需用户线程来处理，服务程序更专注于业务事件的处理，而非IO阻塞。

2. Asynchronous Completion Token
简单来说，ACT就是应对应用程序异步调用服务操作，并处理相应的服务完成事件。从token这个字面意思，我们大概就能了解到，它是一种状态的保持和传递。

比如，通常应用程序会有调用第三方服务的需求，一般是业务线程请求都到，需要第三方资源的时候，去同步的发起第三方请求，而为了提升应用性能，需要异步的方式发起请求，但异步请求的话，等数据到达之后，此时的我方应用程序的语境以及上下文信息已经发生了变化，你没办法去处理。

ACT 解决的就是这个问题，采用了一个token的方式记录异步发送前的信息，发送给接受方，接受方回复的时候再带上这个token，此时就能恢复业务的调用场景。

 



上图中我们可以看到在client processing 这个阶段，客户端是可以继续处理其他业务逻辑的，不是阻塞状态。service 返回期间会带上token信息。　　

3. Acceptor-Connector
Acceptor-Connector是于Reactor的结合，也可以看成是一种变种，它看起来很像上面介绍的Reactor第三种实现方式，但又有本质的不同。



Acceptor-Connector模式是将网络中对等服务的连接和初始化分开处理，使系统中的连接建立及服务一旦服务初始化后就分开解除耦合。连接器主动地建立到远地接受器组件的连接，并初始化服务处理器来处理在连接上交换的数据。同样地，接受器被动地等待来自远地连接器的连接请求，在这样的请求到达时建立连接，并初始化服务处理器来处理在连接上交换的数据。随后已初始化的服务处理器执行应用特有的处理，并通过连接器和接受器组件建立的连接来进行通信。

这么处理的好处是:

一般而言，用于连接建立和服务初始化的策略变动的频度要远小于应用服务实现和通信协议。

容易增加新类型的服务、新的服务实现和新的通信协议，而又不影响现有的连接建立和服务初始化软件。比如采用IPX/SPX通信协议或者TCP协议。

连接角色和通信角色的去耦合，连接角色只管发起连接 vs. 接受连接。通信角色只管数据交互。

将程序员与低级网络编程API（像socket或TLI）类型安全性的缺乏屏蔽开来。业务开发关系底层通信

转载：https://my.oschina.net/u/1859679/blog/1844109 



[原文链接：](https://blog.csdn.net/wteruiycbqqvwt/article/details/90299610)






问题：如果我们先前创建的几个进程承载不了目前快速发展的业务的话，是不是还得增加进程数？我们都知道系统创建进程是需要消耗大量资源的，所以这样就会导致系统资源不足的情况。

那么有没有一种方式可以让一个进程同时为多个客户端端提供服务？

接下来要讲的IO复用技术就是对于上述问题的最好解答。

对于IO复用，我们可以通过一个例子来很好的理解它。（

例子来自于《TCP/IP网络编程》）

某教室有10名学生和1名老师，这些学生上课会不停的提问，所以一个老师处理不了这么多的问题。那么学校为每个学生都配一名老师，也就是这个教室目前有10名老师。此后，只要有新的转校生，那么就会为这个学生专门分配一个老师，因为转校生也喜欢提问题。如果把以上例子中的学生比作客户端，那么老师就是负责进行数据交换的服务端。则该例子可以比作是多进程的方式。

后来有一天，来了一位具有超能力的老师，这位老师回答问题非常迅速，并且可以应对所有的问题。而这位老师采用的方式是学生提问前必须先举手，确认举手学生后在回答问题。则现在的情况就是IO复用。

目前的常用的IO复用模型有三种：select，poll，epoll。
(1)select==>时间复杂度O(n)

它仅仅知道了，有I/O事件发生了，却并不知道是哪那几个流（可能有一个，多个，甚至全部），我们只能无差别轮询所有流，找出能读出数据，或者写入数据的流，对他们进行操作。所以select具有O(n)的无差别轮询复杂度，同时处理的流越多，无差别轮询时间就越长。

(2)poll==>时间复杂度O(n)

poll本质上和select没有区别，它将用户传入的数组拷贝到内核空间，然后查询每个fd对应的设备状态， 但是它没有最大连接数的限制，原因是它是基于链表来存储的.

(3)epoll==>时间复杂度O(1)

epoll可以理解为event poll，不同于忙轮询和无差别轮询，epoll会把哪个流发生了怎样的I/O事件通知我们。所以我们说epoll实际上是事件驱动（每个事件关联上fd）的，此时我们对这些流的操作都是有意义的。（复杂度降低到了O(1)）

select，poll，epoll都是IO多路复用的机制。I/O多路复用就通过一种机制，可以监视多个描述符，一旦某个描述符就绪（一般是读就绪或者写就绪），能够通知程序进行相应的读写操作。但select，poll，epoll本质上都是同步I/O，因为他们都需要在读写事件就绪后自己负责进行读写，也就是说这个读写过程是阻塞的，而异步I/O则无需自己负责进行读写，异步I/O的实现会负责把数据从内核拷贝到用户空间。  

epoll跟select都能提供多路I/O复用的解决方案。在现在的Linux内核里有都能够支持，其中epoll是Linux所特有，而select则应该是POSIX所规定，一般操作系统均有实现

select：

select的调用过程如下所示：



（1）使用copy_from_user从用户空间拷贝fd_set到内核空间

（2）注册回调函数__pollwait

（3）遍历所有fd，调用其对应的poll方法（对于socket，这个poll方法是sock_poll，sock_poll根据情况会调用到tcp_poll,udp_poll或者datagram_poll）

（4）以tcp_poll为例，其核心实现就是__pollwait，也就是上面注册的回调函数。

（5）__pollwait的主要工作就是把current（当前进程）挂到设备的等待队列中，不同的设备有不同的等待队列，对于tcp_poll来说，其等待队列是sk->sk_sleep（注意把进程挂到等待队列中并不代表进程已经睡眠了）。在设备收到一条消息（网络设备）或填写完文件数据（磁盘设备）后，会唤醒设备等待队列上睡眠的进程，这时current便被唤醒了。

（6）poll方法返回时会返回一个描述读写操作是否就绪的mask掩码，根据这个mask掩码给fd_set赋值。

（7）如果遍历完所有的fd，还没有返回一个可读写的mask掩码，则会调用schedule_timeout是调用select的进程（也就是current）进入睡眠。当设备驱动发生自身资源可读写后，会唤醒其等待队列上睡眠的进程。如果超过一定的超时时间（schedule_timeout指定），还是没人唤醒，则调用select的进程会重新被唤醒获得CPU，进而重新遍历fd，判断有没有就绪的fd。

（8）把fd_set从内核空间拷贝到用户空间。

select本质上是通过设置或者检查存放fd标志位的数据结构来进行下一步处理。这样所带来的缺点是：

1、 单个进程可监视的fd数量被限制，即能监听端口的大小有限。

      一般来说这个数目和系统内存关系很大，具体数目可以cat /proc/sys/fs/file-max察看。32位机默认是1024个。64位机默认是2048.

2、 对socket进行扫描时是线性扫描，即采用轮询的方法，效率较低：

       当套接字比较多的时候，每次select()都要通过遍历FD_SETSIZE个Socket来完成调度,不管哪个Socket是活跃的,都遍历一遍。这会浪费很多CPU时间。如果能给套接字注册某个回调函数，当他们活跃时，自动完成相关操作，那就避免了轮询，这正是epoll与kqueue做的。

（1）每次调用select，都需要把fd集合从用户态拷贝到内核态，这个开销在fd很多时会很大

（2）同时每次调用select都需要在内核遍历传递进来的所有fd，这个开销在fd很多时也很大

3、需要维护一个用来存放大量fd的数据结构，这样会使得用户空间和内核空间在传递该结构时复制开销大

poll：

poll的实现和select非常相似，只是描述fd集合的方式不同，poll使用pollfd结构而不是select的fd_set结构，其他的都差不多,管理多个描述符也是进行轮询，根据描述符的状态进行处理，但是poll没有最大文件描述符数量的限制。poll和select同样存在一个缺点就是，包含大量文件描述符的数组被整体复制于用户态和内核的地址空间之间，而不论这些文件描述符是否就绪，它的开销随着文件描述符数量的增加而线性增大。

poll本质上和select没有区别，它将用户传入的数组拷贝到内核空间，然后查询每个fd对应的设备状态，如果设备就绪则在设备等待队列中加入一项并继续遍历，如果遍历完所有fd后没有发现就绪设备，则挂起当前进程，直到设备就绪或者主动超时，被唤醒后它又要再次遍历fd。这个过程经历了多次无谓的遍历。

它没有最大连接数的限制，原因是它是基于链表来存储的，但是同样有一个缺点：

1、大量的fd的数组被整体复制于用户态和内核地址空间之间，而不管这样的复制是不是有意义。                   

2、poll还有一个特点是“水平触发”，如果报告了fd后，没有被处理，那么下次poll时会再次报告该fd。

epoll:

epoll有EPOLL LT和EPOLL ET两种触发模式，LT是默认的模式，ET是“高速”模式。LT模式下，只要这个fd还有数据可读，每次 epoll_wait都会返回它的事件，提醒用户程序去操作，而在ET（边缘触发）模式中，它只会提示一次，直到下次再有数据流入之前都不会再提示了，无 论fd中是否还有数据可读。所以在ET模式下，read一个fd的时候一定要把它的buffer读光，也就是说一直读到read的返回值小于请求值，或者 遇到EAGAIN错误。还有一个特点是，epoll使用“事件”的就绪通知方式，通过epoll_ctl注册fd，一旦该fd就绪，内核就会采用类似callback的回调机制来激活该fd，epoll_wait便可以收到通知。

epoll为什么要有EPOLL ET触发模式？

如果采用EPOLL LT模式的话，系统中一旦有大量你不需要读写的就绪文件描述符，它们每次调用epoll_wait都会返回，这样会大大降低处理程序检索自己关心的就绪文件描述符的效率.。而采用EPOLL ET这种边沿触发模式的话，当被监控的文件描述符上有可读写事件发生时，epoll_wait()会通知处理程序去读写。如果这次没有把数据全部读写完(如读写缓冲区太小)，那么下次调用epoll_wait()时，它不会通知你，也就是它只会通知你一次，直到该文件描述符上出现第二次可读写事件才会通知你！！！这种模式比水平触发效率高，系统不会充斥大量你不关心的就绪文件描述符。

epoll的优点：

1、没有最大并发连接的限制，能打开的FD的上限远大于1024（1G的内存上能监听约10万个端口）；
2、效率提升，不是轮询的方式，不会随着FD数目的增加效率下降。只有活跃可用的FD才会调用callback函数；
即Epoll最大的优点就在于它只管你“活跃”的连接，而跟连接总数无关，因此在实际的网络环境中，Epoll的效率就会远远高于select和poll。

3、 内存拷贝，利用mmap()文件映射内存加速与内核空间的消息传递；即epoll使用mmap减少复制开销。

epoll既然是对select和poll的改进，就应该能避免上述缺点。那epoll都是怎么解决的呢？在此之前，我们先看一下epoll和select和poll的调用接口上的不同，select和poll都只提供了一个函数——select或者poll函数。而epoll提供了三个函数，epoll_create,epoll_ctl和epoll_wait，epoll_create是创建一个epoll句柄；epoll_ctl是注册要监听的事件类型；epoll_wait则是等待事件的产生。

　　对于第一个缺点，epoll的解决方案在epoll_ctl函数中。每次注册新的事件到epoll句柄中时（在epoll_ctl中指定EPOLL_CTL_ADD），会把所有的fd拷贝进内核，而不是在epoll_wait的时候重复拷贝。epoll保证了每个fd在整个过程中只会拷贝一次。

　　对于第二个缺点，epoll的解决方案不像select或poll一样每次都把current轮流加入fd对应的设备等待队列中，而只在epoll_ctl时把current挂一遍（这一遍必不可少）并为每个fd指定一个回调函数，当设备就绪，唤醒等待队列上的等待者时，就会调用这个回调函数，而这个回调函数会把就绪的fd加入一个就绪链表）。epoll_wait的工作实际上就是在这个就绪链表中查看有没有就绪的fd（利用schedule_timeout()实现睡一会，判断一会的效果，和select实现中的第7步是类似的）。

　　epoll没有FD个数这个限制，它所支持的FD上限是最大可以打开文件的数目，这个数字一般远大于2048,举个例子,在1GB内存的机器上大约是10万左右，具体数目可以cat /proc/sys/fs/file-max察看,一般来说这个数目和系统内存关系很大。

 

select、poll、epoll 区别总结：
1、支持一个进程所能打开的最大连接数

select：单个进程所能打开的最大连接数有FD_SETSIZE宏定义，其大小是32个整数的大小（在32位的机器上，大小就是3232，同理64位机器上FD_SETSIZE为3264），当然我们可以对进行修改，然后重新编译内核，但是性能可能会受到影响，这需要进一步的测试。

poll：poll本质上和select没有区别，但是它没有最大连接数的限制，原因是它是基于链表来存储的。

epoll：虽然连接数有上限，但是很大，1G内存的机器上可以打开10万左右的连接，2G内存的机器可以打开20万左右的连接。

2、FD剧增后带来的IO效率问题

select：因为每次调用时都会对连接进行线性遍历，所以随着FD的增加会造成遍历速度慢的“线性下降性能问题”。

poll：同上

epoll：因为epoll内核中实现是根据每个fd上的callback函数来实现的，只有活跃的socket才会主动调用callback，所以在活跃socket较少的情况下，使用epoll没有前面两者的线性下降的性能问题，但是所有socket都很活跃的情况下，可能会有性能问题。

3、 消息传递方式

select：内核需要将消息传递到用户空间，都需要内核拷贝动作

poll：同上

epoll：epoll通过内核和用户空间共享一块内存来实现的。

总结：

综上，在选择select，poll，epoll时要根据具体的使用场合以及这三种方式的自身特点。

1、表面上看epoll的性能最好，但是在连接数少并且连接都十分活跃的情况下，select和poll的性能可能比epoll好，毕竟epoll的通知机制需要很多函数回调。

select，poll实现需要自己不断轮询所有fd集合，直到设备就绪，期间可能要睡眠和唤醒多次交替。而epoll其实也需要调用epoll_wait不断轮询就绪链表，期间也可能多次睡眠和唤醒交替，但是它是设备就绪时，调用回调函数，把就绪fd放入就绪链表中，并唤醒在epoll_wait中进入睡眠的进程。虽然都要睡眠和交替，但是select和poll在“醒着”的时候要遍历整个fd集合，而epoll在“醒着”的时候只要判断一下就绪链表是否为空就行了，这节省了大量的CPU时间。这就是回调机制带来的性能提升。

2、select低效是因为每次它都需要轮询。但低效也是相对的，视情况而定，也可通过良好的设计改善 

select，poll每次调用都要把fd集合从用户态往内核态拷贝一次，并且要把current往设备等待队列中挂一次，而epoll只要一次拷贝，而且把current往等待队列上挂也只挂一次（在epoll_wait的开始，注意这里的等待队列并不是设备等待队列，只是一个epoll内部定义的等待队列）。这也能节省不少的开销。

 

epoll IO多路复用模型实现机制详解
由于epoll的实现机制与select/poll机制完全不同，上面所说的 select的缺点在epoll上不复存在。

设想一下如下场景：有100万个客户端同时与一个服务器进程保持着TCP连接。而每一时刻，通常只有几百上千个TCP连接是活跃的(事实上大部分场景都是这种情况)。如何实现这样的高并发？

在select/poll时代，服务器进程每次都把这100万个连接告诉操作系统(从用户态复制句柄数据结构到内核态)，让操作系统内核去查询这些套接字上是否有事件发生，轮询完后，再将句柄数据复制到用户态，让服务器应用程序轮询处理已发生的网络事件，这一过程资源消耗较大，因此，select/poll一般只能处理几千的并发连接。

epoll的设计和实现与select完全不同。epoll通过在Linux内核中申请一个简易的文件系统(文件系统一般用什么数据结构实现？B+树)。把原先的select/poll调用分成了3个部分：

1）调用epoll_create()建立一个epoll对象(在epoll文件系统中为这个句柄对象分配资源)

2）调用epoll_ctl向epoll对象中添加这100万个连接的套接字

3）调用epoll_wait收集发生的事件的连接

如此一来，要实现上面说是的场景，只需要在进程启动时建立一个epoll对象，然后在需要的时候向这个epoll对象中添加或者删除连接。同时，epoll_wait的效率也非常高，因为调用epoll_wait时，并没有一股脑的向操作系统复制这100万个连接的句柄数据，内核也不需要去遍历全部的连接。

下面来看看Linux内核具体的epoll机制实现思路。
当某一进程调用epoll_create方法时，Linux内核会创建一个eventpoll结构体，这个结构体中有两个成员与epoll的使用方式密切相关。eventpoll结构体如下所示：

struct eventpoll{
    ....
    /*红黑树的根节点，这颗树中存储着所有添加到epoll中的需要监控的事件*/
    struct rb_root  rbr;
    /*双链表中则存放着将要通过epoll_wait返回给用户的满足条件的事件*/
    struct list_head rdlist;
    ....
};
每一个epoll对象都有一个独立的eventpoll结构体，用于存放通过epoll_ctl方法向epoll对象中添加进来的事件。这些事件都会挂载在红黑树中，如此，重复添加的事件就可以通过红黑树而高效的识别出来(红黑树的插入时间效率是lgn，其中n为树的高度)。

而所有添加到epoll中的事件都会与设备(网卡)驱动程序建立回调关系，也就是说，当相应的事件发生时会调用这个回调方法。这个回调方法在内核中叫ep_poll_callback,它会将发生的事件添加到rdlist双链表中。

在epoll中，对于每一个事件，都会建立一个epitem结构体，如下所示：

struct epitem{
    struct rb_node  rbn;//红黑树节点
    struct list_head    rdllink;//双向链表节点
    struct epoll_filefd  ffd;  //事件句柄信息
    struct eventpoll *ep;    //指向其所属的eventpoll对象
    struct epoll_event event; //期待发生的事件类型
}
当调用epoll_wait检查是否有事件发生时，只需要检查eventpoll对象中的rdlist双链表中是否有epitem元素即可。如果rdlist不为空，则把发生的事件复制到用户态，同时将事件数量返回给用户。



从上面的讲解可知：通过红黑树和双链表数据结构，并结合回调机制，造就了epoll的高效。

OK，讲解完了Epoll的机理，我们便能很容易掌握epoll的用法了。一句话描述就是：三步曲。

第一步：epoll_create()系统调用。此调用返回一个句柄，之后所有的使用都依靠这个句柄来标识。

第二步：epoll_ctl()系统调用。通过此调用向epoll对象中添加、删除、修改感兴趣的事件，返回0标识成功，返回-1表示失败。

第三部：epoll_wait()系统调用。通过此调用收集收集在epoll监控中已经发生的事件。
 

//   
// a simple echo server using epoll in linux  
//    
// 2013-03-22:修改了几个问题，1是/n格式问题，2是去掉了原代码不小心加上的ET模式;
// 本来只是简单的示意程序，决定还是加上 recv/send时的buffer偏移
// by sparkling  
//   
#include <sys/socket.h>  
#include <sys/epoll.h>  
#include <netinet/in.h>  
#include <arpa/inet.h>  
#include <fcntl.h>  
#include <unistd.h>  
#include <stdio.h>  
#include <errno.h>  
#include <iostream>  
using namespace std;  
#define MAX_EVENTS 500  
struct myevent_s  
{  
    int fd;  
    void (*call_back)(int fd, int events, void *arg);  
    int events;  
    void *arg;  
    int status; // 1: in epoll wait list, 0 not in  
    char buff[128]; // recv data buffer  
    int len, s_offset;  
    long last_active; // last active time  
};  
// set event  
void EventSet(myevent_s *ev, int fd, void (*call_back)(int, int, void*), void *arg)  
{  
    ev->fd = fd;  
    ev->call_back = call_back;  
    ev->events = 0;  
    ev->arg = arg;  
    ev->status = 0;
    bzero(ev->buff, sizeof(ev->buff));
    ev->s_offset = 0;  
    ev->len = 0;
    ev->last_active = time(NULL);  
}  
// add/mod an event to epoll  
void EventAdd(int epollFd, int events, myevent_s *ev)  
{  
    struct epoll_event epv = {0, {0}};  
    int op;  
    epv.data.ptr = ev;  
    epv.events = ev->events = events;  
    if(ev->status == 1){  
        op = EPOLL_CTL_MOD;  
    }  
    else{  
        op = EPOLL_CTL_ADD;  
        ev->status = 1;  
    }  
    if(epoll_ctl(epollFd, op, ev->fd, &epv) < 0)  
        printf("Event Add failed[fd=%d], evnets[%d]\n", ev->fd, events);  
    else  
        printf("Event Add OK[fd=%d], op=%d, evnets[%0X]\n", ev->fd, op, events);  
}  
// delete an event from epoll  
void EventDel(int epollFd, myevent_s *ev)  
{  
    struct epoll_event epv = {0, {0}};  
    if(ev->status != 1) return;  
    epv.data.ptr = ev;  
    ev->status = 0;
    epoll_ctl(epollFd, EPOLL_CTL_DEL, ev->fd, &epv);  
}  
int g_epollFd;  
myevent_s g_Events[MAX_EVENTS+1]; // g_Events[MAX_EVENTS] is used by listen fd  
void RecvData(int fd, int events, void *arg);  
void SendData(int fd, int events, void *arg);  
// accept new connections from clients  
void AcceptConn(int fd, int events, void *arg)  
{  
    struct sockaddr_in sin;  
    socklen_t len = sizeof(struct sockaddr_in);  
    int nfd, i;  
    // accept  
    if((nfd = accept(fd, (struct sockaddr*)&sin, &len)) == -1)  
    {  
        if(errno != EAGAIN && errno != EINTR)  
        {  
        }
        printf("%s: accept, %d", __func__, errno);  
        return;  
    }  
    do  
    {  
        for(i = 0; i < MAX_EVENTS; i++)  
        {  
            if(g_Events[i].status == 0)  
            {  
                break;  
            }  
        }  
        if(i == MAX_EVENTS)  
        {  
            printf("%s:max connection limit[%d].", __func__, MAX_EVENTS);  
            break;  
        }  
        // set nonblocking
        int iret = 0;
        if((iret = fcntl(nfd, F_SETFL, O_NONBLOCK)) < 0)
        {
            printf("%s: fcntl nonblocking failed:%d", __func__, iret);
            break;
        }
        // add a read event for receive data  
        EventSet(&g_Events[i], nfd, RecvData, &g_Events[i]);  
        EventAdd(g_epollFd, EPOLLIN, &g_Events[i]);  
    }while(0);  
    printf("new conn[%s:%d][time:%d], pos[%d]\n", inet_ntoa(sin.sin_addr),
            ntohs(sin.sin_port), g_Events[i].last_active, i);  
}  
// receive data  
void RecvData(int fd, int events, void *arg)  
{  
    struct myevent_s *ev = (struct myevent_s*)arg;  
    int len;  
    // receive data
    len = recv(fd, ev->buff+ev->len, sizeof(ev->buff)-1-ev->len, 0);    
    EventDel(g_epollFd, ev);
    if(len > 0)
    {
        ev->len += len;
        ev->buff[len] = '\0';  
        printf("C[%d]:%s\n", fd, ev->buff);  
        // change to send event  
        EventSet(ev, fd, SendData, ev);  
        EventAdd(g_epollFd, EPOLLOUT, ev);  
    }  
    else if(len == 0)  
    {  
        close(ev->fd);  
        printf("[fd=%d] pos[%d], closed gracefully.\n", fd, ev-g_Events);  
    }  
    else  
    {  
        close(ev->fd);  
        printf("recv[fd=%d] error[%d]:%s\n", fd, errno, strerror(errno));  
    }  
}  
// send data  
void SendData(int fd, int events, void *arg)  
{  
    struct myevent_s *ev = (struct myevent_s*)arg;  
    int len;  
    // send data  
    len = send(fd, ev->buff + ev->s_offset, ev->len - ev->s_offset, 0);
    if(len > 0)  
    {
        printf("send[fd=%d], [%d<->%d]%s\n", fd, len, ev->len, ev->buff);
        ev->s_offset += len;
        if(ev->s_offset == ev->len)
        {
            // change to receive event
            EventDel(g_epollFd, ev);  
            EventSet(ev, fd, RecvData, ev);  
            EventAdd(g_epollFd, EPOLLIN, ev);  
        }
    }  
    else  
    {  
        close(ev->fd);  
        EventDel(g_epollFd, ev);  
        printf("send[fd=%d] error[%d]\n", fd, errno);  
    }  
}  
void InitListenSocket(int epollFd, short port)  
{  
    int listenFd = socket(AF_INET, SOCK_STREAM, 0);  
    fcntl(listenFd, F_SETFL, O_NONBLOCK); // set non-blocking  
    printf("server listen fd=%d\n", listenFd);  
    EventSet(&g_Events[MAX_EVENTS], listenFd, AcceptConn, &g_Events[MAX_EVENTS]);  
    // add listen socket  
    EventAdd(epollFd, EPOLLIN, &g_Events[MAX_EVENTS]);  
    // bind & listen  
    sockaddr_in sin;  
    bzero(&sin, sizeof(sin));  
    sin.sin_family = AF_INET;  
    sin.sin_addr.s_addr = INADDR_ANY;  
    sin.sin_port = htons(port);  
    bind(listenFd, (const sockaddr*)&sin, sizeof(sin));  
    listen(listenFd, 5);  
}  
int main(int argc, char **argv)  
{  
    unsigned short port = 12345; // default port  
    if(argc == 2){  
        port = atoi(argv[1]);  
    }  
    // create epoll  
    g_epollFd = epoll_create(MAX_EVENTS);  
    if(g_epollFd <= 0) printf("create epoll failed.%d\n", g_epollFd);  
    // create & bind listen socket, and add to epoll, set non-blocking  
    InitListenSocket(g_epollFd, port);  
    // event loop  
    struct epoll_event events[MAX_EVENTS];  
    printf("server running:port[%d]\n", port);  
    int checkPos = 0;  
    while(1){  
        // a simple timeout check here, every time 100, better to use a mini-heap, and add timer event  
        long now = time(NULL);  
        for(int i = 0; i < 100; i++, checkPos++) // doesn't check listen fd  
        {  
            if(checkPos == MAX_EVENTS) checkPos = 0; // recycle  
            if(g_Events[checkPos].status != 1) continue;  
            long duration = now - g_Events[checkPos].last_active;  
            if(duration >= 60) // 60s timeout  
            {  
                close(g_Events[checkPos].fd);  
                printf("[fd=%d] timeout[%d--%d].\n", g_Events[checkPos].fd, g_Events[checkPos].last_active, now);  
                EventDel(g_epollFd, &g_Events[checkPos]);  
            }  
        }  
        // wait for events to happen  
        int fds = epoll_wait(g_epollFd, events, MAX_EVENTS, 1000);  
        if(fds < 0){  
            printf("epoll_wait error, exit\n");  
            break;  
        }  
        for(int i = 0; i < fds; i++){  
            myevent_s *ev = (struct myevent_s*)events[i].data.ptr;  
            if((events[i].events&EPOLLIN)&&(ev->events&EPOLLIN)) // read event  
            {  
                ev->call_back(ev->fd, events[i].events, ev->arg);  
            }  
            if((events[i].events&EPOLLOUT)&&(ev->events&EPOLLOUT)) // write event  
            {  
                ev->call_back(ev->fd, events[i].events, ev->arg);  
            }  
        }  
    }  
    // free resource  
    return 0;  
}   
 
————————————————
版权声明：本文为CSDN博主「panamera12」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
