query
getMatrixAndRoleNameFor: aBpmTaskAssignment ifNone: aBlock
	"Answer anArray with 2 elements. The first is the <BpmTasksHolderMatrix> that holds the assignment <aBpmTaskAssignment> and the second is the role name holding the assignment"

	self getAllMatrixDictionaries do: [:eachMatrixDictionary | 
		eachMatrixDictionary do: [:eachMatrix | 
			eachMatrix rolesAndAssignment keysAndValuesDo: [:roleName :rcIdentityBag | 
				(rcIdentityBag identityIncludes: aBpmTaskAssignment) ifTrue: [^Array with: eachMatrix with: roleName].
			]. 
		].
	].

	^aBlock value