jquery
setAssignationPolicy: policyName
	| newPolicyClass |

	newPolicyClass := BpmTaskAssignationPolicy allSubclasses detect: [:eachClass | eachClass printPolicyName = policyName] ifNone: [^self].

	selectedLateralItem assignationPolicy: (newPolicyClass newOn: selectedLateralItem).