query
getAnyAssignmentWithProcessId: processId
	"Answer a collection of assignments in any matrix with process id equal to <processId>"
	| assignments |

	assignments := OrderedCollection new.
	self getAllMatrixDictionaries do: [:eachMatrixDictionary | 
		eachMatrixDictionary do: [:eachMatrix | 
			eachMatrix rolesAndAssignment keysAndValuesDo: [:roleName :rcIdentityBag | 
				(rcIdentityBag select: [:each | each processId = processId]) do: [:each | assignments add: (Array with: each with: eachMatrix)] .
			]. 
		].
	].

	^assignments