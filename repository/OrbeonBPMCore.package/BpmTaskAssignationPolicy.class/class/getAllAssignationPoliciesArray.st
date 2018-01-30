other
getAllAssignationPoliciesArray

	^OrderedCollection new
		add: (Array with: BpmNoneAssignationPolicy printPolicyName with: #nonePolicy);
		add: (Array with: BpmFairAssignationPolicy printPolicyName with: #fairPolicy);
		add: (Array with: BpmRoundRobinRoleAssignationPolicy printPolicyName with: #roundRobinRolePolicy);
		add: (Array with: BpmRoundRobinTaskAssignationPolicy printPolicyName with: #roundRobinTaskPolicy);
		asArray