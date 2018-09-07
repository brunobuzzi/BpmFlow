*orbeonBPMCore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^bpmEnvironment isNil and: [
		(BpmBackofficeRole getRolsInAppName: applicationName) isEmpty and: [
		(BpmFrontOfficeRole getRolsInAppName: applicationName) isEmpty and: [
		(BpmProcessDefinition hasAnyProcessApplicationNamed: applicationName) not
		]]]