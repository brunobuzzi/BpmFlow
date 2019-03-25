other
getAvailableUsers
	| allUsers |

	allUsers := (self defaultBpmUserClass cache reject: [:each | each hasAccessTo: self selectedEnvironment]) asSortedCollection: [:a :b | a username <= b username].

	^self defaultEnvironmentClass areUsersMultiEnvironment
	ifTrue: [allUsers]
	ifFalse: [allUsers select: [:each | each canBeAddedTo: self selectedEnvironment]]

	"in a user single environment each user can be added to other environment if:
    - environment is 'admins' or:
	- environment is NOT 'admins' and has no other environment and can be added to the environment.
is in Admins environment then it can be added to other environment
	- the current environment is Admins then any user can be added to it"