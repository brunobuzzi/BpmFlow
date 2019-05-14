process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	"if it is not multi instance and a task with the same name is already executed --> take the form (previousTask externalObject) and set it to the new task"
	((self isMultiInstance not and: [aBpmProcessInstance hasExecutedActivityNamed: self getDefinitionName]) and: [definition hasExternalObjectReuse not])
	ifTrue: [ | previousTask | 
		previousTask := aBpmProcessInstance getExecutedActivityNamed: self getDefinitionName ifNone: [].
		self externalObject: previousTask externalObject].

	definition hasExternalObjectReuse 
	ifTrue: [| previousTask | 
		previousTask := aBpmProcessInstance getExecutedActivityNamed: definition reuseExternalObjectOfTaskNamed ifNone: [].
		self externalObject: previousTask externalObject.
	].

	self createAttachedEventsIn: aBpmProcessInstance. "create the attached event instances of the receiver "

	^aBpmProcessInstance addActivityToPerform: self "add the task to the Running Matrix"