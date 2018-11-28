assignation policy
setFairAssignationPolicy: isAutomaticBoolean
	"The receiver set the assignation policy to <BpmFairAssignationPolicy> and set if the assignation is automatic with the boolean value <isAutomaticBoolean>"

	assignationPolicy := BpmFairAssignationPolicy newOn: self.

	assignationPolicy isAutomatic: isAutomaticBoolean.