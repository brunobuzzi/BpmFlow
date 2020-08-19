other
doIt
	"The receiver publish the form named <formName> in application named <app> with id <id> title <title> description <description> and xml <xmlString>. 
	The version of the form is in <headerVersion> - orbeon parameter.
	* Calculate the version number & create <anOrbeonSavedFormDefinition> 
	* Compare latest published version with the new one --> [update the current |or| add the new one]"
	| message |

	super doIt.

	message := BpmOrbeonFormDefinitionUpdatedMessage newFromSystemIn: application bpmEnvironment.
	message application: application;
		formName: publishedFormDefinition formName;
		affectedProcesses: (self getAffectedProcessesBy: publishedFormDefinition).

	application backofficeRolesDo: [:bpmRole | message addRecipients: bpmRole].

	message bePublishSubject;
				createMessageBody;
				send.

	^self