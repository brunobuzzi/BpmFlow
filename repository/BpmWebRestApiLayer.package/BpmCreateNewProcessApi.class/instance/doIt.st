other
doIt
	| application formInstance procDefinition newProcess currentTask |

	application := self getOrbeonApplicationClass applicationNamed: appName ifNone: [^NoApplicationException signal: 'No such application [', appName, ']'].
	formInstance := application getAnyInstanceWithId: id of: formName ifNone: [^NoOrbeonFormException signal: 'No such form [', id, ']'].

	procDefinition := BpmProcessDefinition getBpmProcessForAnonymousStartWith: formName in: appName.
	newProcess := procDefinition createAndStartProcessInstance: nil "anonymous user ".
	newProcess currentActivities isEmpty ifTrue: [^NoRunningTaskException signal: 'The BpmProcessInstance can not be executed because the collection <currentActivities> is empty'].
	currentTask := newProcess currentActivities last.

	currentTask externalObject: formInstance.
	self associateFormWithTask: currentTask forProcess: newProcess.
	currentTask finalize.
	newProcess generateNextTransitionsFrom: currentTask.
	procDefinition updateFieldsOf: formInstance. "the indexes of the BpmProcessDefinition are updated here"

	^restHandler redirectToStaticMessagePageFor: newProcess