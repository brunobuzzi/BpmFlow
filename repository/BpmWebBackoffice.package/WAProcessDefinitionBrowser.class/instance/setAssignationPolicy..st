assignation policy
setAssignationPolicy: policyName
	| newPolicyClass policy |

	newPolicyClass := BpmTaskAssignationPolicy allSubclasses detect: [:eachClass | eachClass printPolicyName = policyName] ifNone: [^self].

	policy := newPolicyClass newOn: selectedLateralItem.
	policy isAutomatic: (searchValues at: 'isAutomatic' ifAbsent: [false]).
	selectedLateralItem assignationPolicy: policy.