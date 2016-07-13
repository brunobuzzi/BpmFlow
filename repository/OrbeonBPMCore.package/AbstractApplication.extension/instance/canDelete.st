*orbeonBPMCore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^(BpmBackofficeRole getRolsInAppName: applicationName) isEmpty and: [
		(BpmFrontOfficeRole getRolsInAppName: applicationName) isEmpty and: [
		(BpmProcessDefinition hasAnyProcessApplicationNamed: applicationName) not
		]]