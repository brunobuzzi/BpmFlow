other
getAllAssignationPoliciesArray

	^OrderedCollection new
		add: BpmNoneAssignationPolicy printPolicyName;
		add: BpmFairAssignationPolicy printPolicyName;
		add: BpmRoundRobinRoleAssignationPolicy printPolicyName;
		add: BpmRoundRobinTaskAssignationPolicy printPolicyName;
		asArray