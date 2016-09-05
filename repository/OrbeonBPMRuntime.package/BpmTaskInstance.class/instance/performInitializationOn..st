other
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	"if it is not multi instance and a task with the same name is already executed --> take the form (previousTask externalObject) and set it to the new task"
	(self isMultiInstance not and: [aBpmProcessInstance hasExecutedActivityNamed: self getDefinitionName])
	ifTrue: [ | previousTask | 
		previousTask := aBpmProcessInstance getExecutedActivityNamed: self getDefinitionName ifNone: [].
		self externalObject: previousTask externalObject].

	^aBpmProcessInstance addActivityToPerform: self "add the task to the Running Matrix"