assignation policy
applyAssignationPolicy
	"The receiver get the assignation policy <aBpmTaskAssignationPolicy> from the process definition <aBpmProcessDefinition> and apply it on itself"

	^self assignationPolicy applyOn: self