other
getAvailableUsers
	| allUsers |

	allUsers := (BpmUser cache reject: [:each | each hasAccessTo: self selectedEnvironment]) asSortedCollection: [:a :b | a username <= b username].

	^self defaultEnvironmentClass areUsersMultiEnvironment
	ifTrue: [allUsers]
	ifFalse: [allUsers select: [:each | (each bpmEnvironments size = 0) 
													or: [(each hasAccessTo: self selectedEnvironment)
													or:[(self selectedEnvironment == self defaultEnvironmentClass getAdminsEnvironment) 
													or: [each isInAdminsEnvironment]]]] ]

	"in a user single environment each user can be added to other environment if:
    - has no environment 
	- the current environment is identical to user environment
	- is in Admins environment then it can be added to other environment
	- the current environment is Admins then any user can be added to it"