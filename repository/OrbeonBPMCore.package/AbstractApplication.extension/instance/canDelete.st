*orbeonBPMCore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^bpmEnvironment isNil and: [
		(BpmBackofficeRole getRolsIn: bpmEnvironment forApplication: self) isEmpty and: [
		(BpmFrontOfficeRole getRolsIn: bpmEnvironment forApplication: self) isEmpty and: [
		(BpmProcessDefinition hasAnyProcessApplicationNamed: applicationName) not
		]]]