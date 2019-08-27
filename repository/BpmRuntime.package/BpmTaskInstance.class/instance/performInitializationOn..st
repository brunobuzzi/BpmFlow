process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	(definition hasLoop and:[definition isStandardLoop and:[definition testTimeIsBefore]])
	ifTrue: [(definition evaluateLoopIn: aBpmProcessInstance) result "if <false> it must no enter the loop --> finalize the task and generate next transitions"
				ifFalse: [self basicFinalize. "only change the task state but does not remove the task from the process (because this task does no exist in <currentActivities> )"
							^self generateNextRunningTransitions]].

	"if it isPreviousFormReusable and a task with the same name is already executed --> take the form (previousTask externalObject) and set it to the new task"
	((self isPreviousFormReusable and: [aBpmProcessInstance hasExecutedActivityNamed: self getDefinitionName]) and: [definition hasExternalObjectReuse not])
	ifTrue: [ | previousTask | 
		previousTask := aBpmProcessInstance getExecutedActivityNamed: self getDefinitionName ifNone: [].
		self externalObject: previousTask externalObject].

	definition hasExternalObjectReuse 
	ifTrue: [| previousTask | 
		previousTask := aBpmProcessInstance getExecutedActivityNamed: definition reuseExternalObjectOfTaskNamed ifNone: [].
		self externalObject: previousTask externalObject.
	].

	self createAttachedEventsIn: aBpmProcessInstance. "create the attached event instances of the receiver "

	^aBpmProcessInstance addActivityToPerform: self "add the task to the Running Matrix and generate the <BpmTaskAssignment>"