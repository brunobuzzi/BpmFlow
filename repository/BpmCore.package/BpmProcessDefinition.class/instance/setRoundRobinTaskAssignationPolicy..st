assignation policy
setRoundRobinTaskAssignationPolicy: isAutomaticBoolean
	"The receiver set the assignation policy to <BpmRoundRobinTaskAssignationPolicy> and set if the assignation is automatic with the boolean value <isAutomaticBoolean>"

	assignationPolicy := BpmRoundRobinTaskAssignationPolicy newOn: self.

	assignationPolicy isAutomatic: isAutomaticBoolean.