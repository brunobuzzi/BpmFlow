service-post
newProcessFromOrbeonFormId: id processId: procId dataFormatVersion: dataFormatVersion language: lan valid: valid app: app formVersion: formVersion form: form
	"POST service to process an Orbeon XML form with id <id> language <lan> for the OrbeonApplication named <app> for the OrbeonForm named <form>.
	1- Register the XML in the system and update Domain Objects.
	2- Get the Process Definition for the Orbeon Instance Form.
	3- Create the Process based on the definition and finish the first transition of the Process -the annonimous user has already sent the finished form-"
	<post>
	<path: '/createprocess?document={1}&process={2}&data-format-version={3}&language={4}&valid={5}&app={6}&form-version={7}&form={8}'>
	<produces: 'text/html'>
	| application formInstance procDefinition newProcess currentTask |

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^NoApplicationException signal: 'No such application [', app, ']'].
	formInstance := application getAnyInstanceWithId: id of: form ifNone: [^NoOrbeonFormException signal: 'No such form [', id, ']'].

	procDefinition := BpmProcessDefinition getBpmProcessDefinitionForForm: form in: app.
	newProcess := procDefinition createAndStartProcessInstance: nil "anonymous user ".
	newProcess currentActivities isEmpty ifTrue: [^NoRunningTaskException signal: 'The BpmProcessInstance can not be executed because the collection <currentActivities> is empty'].
	currentTask := newProcess currentActivities last.

	currentTask externalObject: formInstance.
	self associateFormWithTask: currentTask forProcess: newProcess.
	currentTask finalize.
	newProcess generateNextTransitionsFrom: currentTask.
	procDefinition updateFieldsOf: formInstance. "the indexes of the BpmProcessDefinition are updated here"

	^self redirectToStaticMessagePageFor: newProcess