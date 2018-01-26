other
getAvailableUsersToTake: aBpmTaskAssignment
	"The receiver answer a collection of <BpmUser>s having permissions to take the assignment <aBpmTaskAssignment> "

	^self cache select: [:eachUser | 
			eachUser roles anySatisfy: [:eachRole | eachRole isFrontofficeRole and: [eachRole name =  aBpmTaskAssignment roleName]] 
	]