other
getAvailableUsers
	| allUsers |

	allUsers := (self session systemRoot usersReject: [:each | each hasAccessTo: self selectedLateralItem]) asSortedCollection: [:a :b | a username <= b username].

	^self session systemRoot areUsersMultiEnvironment
	ifTrue: [allUsers]
	ifFalse: [allUsers select: [:each | each canBeAddedTo: self selectedLateralItem]]

	"in a user single environment each user can be added to other environment if:
    - environment is 'admins' or:
	- environment is NOT 'admins' and has no other environment and can be added to the environment.
is in Admins environment then it can be added to other environment
	- the current environment is Admins then any user can be added to it"