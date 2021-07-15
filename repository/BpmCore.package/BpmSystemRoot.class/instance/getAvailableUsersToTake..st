bpm users
getAvailableUsersToTake: aBpmTaskAssignment
	"The receiver answer a collection of <BpmUser>s having permissions to take the assignment <aBpmTaskAssignment> "

	^aBpmTaskAssignment bpmEnvironment usersSelect: [:eachUser | 
			(eachUser rolesIn: aBpmTaskAssignment bpmEnvironment)
				anySatisfy: [:eachRole | (eachRole application ==  aBpmTaskAssignment application) and: [eachRole isFrontofficeRole and: [eachRole name =  aBpmTaskAssignment roleName]]] 
	]

	"(eachRole application ==  aBpmTaskAssignment application) 
	- this check is used because two different roles of different applications can have the same name. 
	Without this control invalid users will be listed for roles with the same name"