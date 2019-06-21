script
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	definition runOnBackground ifTrue: [^self defaultScriptExecutor register: aBpmProcessInstance].

	aBpmProcessInstance executeScript: self