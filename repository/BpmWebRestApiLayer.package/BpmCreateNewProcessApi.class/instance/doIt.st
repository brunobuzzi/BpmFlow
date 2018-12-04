other
doIt
	| application formInstance procDefinition currentTask |

	application := self getOrbeonApplicationClass applicationNamed: appName ifNone: [^NoApplicationException signal: 'No such application [', appName, ']'].
	formInstance := application getAnyInstanceWithId: id of: formName ifNone: [^NoOrbeonFormException signal: 'No such form [', id, ']'].

	procDefinition := BpmProcessDefinition getProcessDefnitionWith: processId in: appName.
	procDefinition isAnonymousStartEnabled ifFalse: [^FormToProcessDefinitionMappingException signal: 'There is NO <BpmProcessDefinition> mapped to form [', formName, '] in Application [', appName, '] for anonymous start'].
	procDefinition isAvailable ifFalse: [^ProcessNotAvailableException signal: 'This Process is currently unavailable'].
	newBpmProcess := procDefinition createAndStartProcessInstance: nil "anonymous user ".
	newBpmProcess currentActivities isEmpty ifTrue: [^NoRunningTaskException signal: 'The BpmProcessInstance can not be executed because the collection <currentActivities> is empty'].
	currentTask := newBpmProcess currentActivities last.

	currentTask externalObject: formInstance.
	self associateFormWithTask: currentTask forProcess: newBpmProcess.
	currentTask finalize.
	newBpmProcess generateNextTransitionsFrom: currentTask.
	procDefinition updateFieldsOf: formInstance. "the indexes of the BpmProcessDefinition are updated here"

	^self