--【基金管理】发起基金相关的流程，例如基金成立流程，发起流程后，在工作流程监控-流程查看界面，“项目编号”列没有“基金编号”，历史数据处理脚本
update tproject_info t set	c_projectcodealias=c_projectcode WHERE t.c_projectnature='99' and t.c_projectcodealias is null;

