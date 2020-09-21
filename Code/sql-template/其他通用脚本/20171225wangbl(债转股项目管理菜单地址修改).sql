--债转股项目管理页面菜单地址修改
update tsys_menu t set t.menu_url='packetreception/assetpacket/list.htm?projectnature=09'|| to_char('&')||'menucode=DESPacketManage' where t.menu_code='DESPacketManage';
