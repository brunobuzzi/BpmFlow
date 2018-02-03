assignation policy
printPolicyName

	^definition printPolicyName, (self hasAutomaticTaskAssignation ifTrue: [' @'] ifFalse: [''])