assignation policy
setAssignationPolicy: policyName
	| newPolicyClass |

	newPolicyClass := BpmTaskAssignationPolicy allSubclasses detect: [:eachClass | eachClass printPolicyName = policyName] ifNone: [^self].

	selectedLateralItem assignationPolicy: (newPolicyClass newOn: selectedLateralItem).

	selectedLateralItem assignationPolicy isAutomatic: (searchValues at: 'isAutomatic' ifAbsent: [false]).