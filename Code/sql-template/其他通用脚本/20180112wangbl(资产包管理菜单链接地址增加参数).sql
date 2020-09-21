--资产包管理菜单链接地址增加参数
update  tsys_menu t set t.menu_url = 'packetreception/assetpacket/list.htm?projectnature=01'||to_char('&')||'menucode=assetPacketManage' where t.menu_code='assetPacketManage';
