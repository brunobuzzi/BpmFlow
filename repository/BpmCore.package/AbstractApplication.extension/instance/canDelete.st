*bpmcore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^(self defaultBackOfficeRoleClass getRolsIn: bpmEnvironment forApplication: self) isEmpty and: [
		(self defaultFrontOfficeRoleClass getRolsIn: bpmEnvironment forApplication: self) isEmpty and: [
		(self defaultProcessDefinitionClass hasAnyProcessApplicationNamed: applicationName) not
		]]