other
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	(self isMultiInstance not and: [aBpmProcessInstance hasExecutedActivityNamed: self getDefinitionName])
	ifTrue: [ | previousTask | 
		previousTask := aBpmProcessInstance getExecutedActivityNamed: self getDefinitionName ifNone: [].
		self externalObject: previousTask externalObject].

	^aBpmProcessInstance addActivityToPerform: self