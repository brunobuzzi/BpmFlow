other
doIt
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| message application |

	super doIt.

	application := savedFormDefinition application.
	message := BpmOrbeonFormDefinitionUpdatedMessage newFromSystemIn: application bpmEnvironment.
	message application: application;
		formName: savedFormDefinition formName;
		affectedProcesses: (self getAffectedProcessesBy: savedFormDefinition).

	(self defaultBackOfficeRoleClass getRolsIn: application bpmEnvironment forApplication: application) do: [:bpmRole | message addRecipients: bpmRole].

	message beSavedSubject;
				createMessageBody;
				send.

	^self