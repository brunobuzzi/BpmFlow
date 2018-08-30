instantiation
removeProcessInstance: aBpmProcessInstance
	"The receiver add the process instance <aBpmProcessInstance> to it's collection"

	processInstancesSet remove: aBpmProcessInstance ifAbsent: [NoProcessInstanceException signal: 'No <BpmProcessInstance> with id [', aBpmProcessInstance id printString, ']'].

	^processInstances 
		removeKey: aBpmProcessInstance id 
		ifAbsent: [NoProcessInstanceException signal: 'No <BpmProcessInstance> with id [', aBpmProcessInstance id printString, ']']