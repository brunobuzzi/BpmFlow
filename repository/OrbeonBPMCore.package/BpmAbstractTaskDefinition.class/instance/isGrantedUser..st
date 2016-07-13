other
isGrantedUser: aBpmUser
	"Answer whether or not the user <aBpmUser> is granted in the receiver.
	If there is NO <performers> in the receiver --> check in each role of the receiver if the user <aBpmUser> is granted on it.
	If there is <performers> in the receiver --> check in each role of the user <aBpmUser> and try to mapp it to any <performer> of the receiver. 
		If succeed --> is granted, else --> not granted"

	self hasPerformers 
	ifFalse: [^roles anySatisfy: [:each | each isGranted: aBpmUser]].

	^self performers anySatisfy: [:eachPerformer | | mappedRole |

		mappedRole := aBpmUser roles detect: [:eachRole | (eachRole name = eachPerformer name) and:[eachRole getApplicationName = self applicationName]] 
									ifNone: [nil].

		mappedRole ifNotNil: [mappedRole isGranted: aBpmUser] ifNil: [false].
	]