*bpmcore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^(BpmBackofficeRole getRolsIn: bpmEnvironment forApplication: self) isEmpty and: [
		(BpmFrontOfficeRole getRolsIn: bpmEnvironment forApplication: self) isEmpty and: [
		(self defaultProcessDefinitionClass hasAnyProcessApplicationNamed: applicationName) not
		]]