*bpmcore
canDelete
	"Answer whether or not the receiver can be deleted from the system"

	^frontofficeRoles isEmpty and: [
		backofficeRoles isEmpty and: [
		(self defaultProcessDefinitionClass hasAnyProcessApplicationNamed: applicationName) not and: [
		(self defaultTimerEventMonitor isMonitoringAnyEventIn: self) not
		]]]