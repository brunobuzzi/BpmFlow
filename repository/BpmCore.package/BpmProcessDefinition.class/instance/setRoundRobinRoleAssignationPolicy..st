assignation policy
setRoundRobinRoleAssignationPolicy: isAutomaticBoolean
	"The receiver set the assignation policy to <BpmRoundRobinRoleAssignationPolicy> and set if the assignation is automatic with the boolean value <isAutomaticBoolean>"

	assignationPolicy := BpmRoundRobinRoleAssignationPolicy newOn: self.

	assignationPolicy isAutomatic: isAutomaticBoolean.