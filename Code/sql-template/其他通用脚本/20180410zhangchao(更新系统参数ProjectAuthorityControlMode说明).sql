update tsys_parameter t
   set t.PARAM_DESC = '0默认原来的权限控制（浙商）,01按部门权限控制（项目经理所在部门可以看到项目）,02按项目组成员控制,03、01和02两种模式混合,04控制只有投资经理A和投资经理B还有立项流程发起人所在部门的领导岗的人能查看'
   where t.param_code = 'ProjectAuthorityControlMode';