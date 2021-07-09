*bpmcore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^frontofficeRoles isEmpty and: [
		backofficeRoles isEmpty and: [
		(systemRoot hasAnyProcessInApplicationNamed: applicationName) not and: [
		(systemRoot isMonitoringAnyEventIn: self) not
		]]]