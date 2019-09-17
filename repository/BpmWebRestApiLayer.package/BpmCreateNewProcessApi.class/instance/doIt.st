other
doIt
	"The receiver creates a new <BpmProcessInstance> with the first task already done.
	The form of the task was sent anonymously to the REST service."
	| application formInstance procDefinition currentTask |

	application := self getOrbeonApplicationClass applicationNamed: appName ifNone: [^NoApplicationException signal: 'No such application [', appName, ']'].
	formInstance := application getAnyInstanceWithId: id of: formName ifNone: [^NoOrbeonFormException signal: 'No such form [', id, ']'].

	procDefinition := self defaultProcessDefinitionClass getProcessDefnitionWith: processId in: appName.
	procDefinition isAnonymousStartEnabled ifFalse: [^FormToProcessDefinitionMappingException signal: 'There is NO <BpmProcessDefinition> mapped to form [', formName, '] in Application [', appName, '] for anonymous start'].
	procDefinition isAvailable ifFalse: [^ProcessNotAvailableException signal: 'This Process is currently unavailable'].
	newBpmProcess := procDefinition createAndStartProcessInstance: nil "anonymous user ".
	newBpmProcess currentActivities isEmpty ifTrue: [^NoRunningTaskException signal: 'The BpmProcessInstance can not be executed because the collection <currentActivities> is empty'].
	currentTask := newBpmProcess currentActivities last.

	currentTask externalObject: formInstance.
	self associateFormWithTask: currentTask forProcess: newBpmProcess.
	currentTask performFinalization.
	newBpmProcess generateNextTransitionsFrom: currentTask.
	procDefinition updateFieldsOf: formInstance. "the first task is already done --> the indexes of the BpmProcessDefinition are updated here"

	^self