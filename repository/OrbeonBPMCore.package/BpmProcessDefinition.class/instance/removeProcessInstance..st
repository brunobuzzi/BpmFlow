instantiation
removeProcessInstance: aBpmProcessInstance
	"The receiver add the process instance <aBpmProcessInstance> to it's collection"

	^processInstances 
		removeKey: aBpmProcessInstance id 
		ifAbsent: [NoProcessInstanceException signal: 'No <BpmProcessInstance> with id [', aBpmProcessInstance id printString, ']']