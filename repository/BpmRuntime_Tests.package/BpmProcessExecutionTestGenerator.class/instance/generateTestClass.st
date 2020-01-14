api
generateTestClass
	"The receiver create subclass of <BpmProcessExecutionTest> to debug the process <BpmProcessInstance> <procInstance>"

	self create_testClass.
	self create_setUpMethod.
	self create_tearDownMethod.
	self create_createProcessDefinitionMethod.
	self create_formInstanceMethods.
	self create_testExecuteProcessMethods.