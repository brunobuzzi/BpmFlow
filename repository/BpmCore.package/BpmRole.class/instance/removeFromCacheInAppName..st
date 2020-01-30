cache
removeFromCacheInAppName: aString
	"The receiver is removed from the global Role cache for the <anApplication> named <aString>.
	Application names are unique through the System (including <BpmEnvironment>s)"
	| rolesCollection |

	application := self defaultApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	rolesCollection := self class cache at: aString.

	rolesCollection remove: self ifAbsent: [^NoSuchRoleException signal: 'No Role named <', name, '>'].

	rolesCollection isEmpty ifTrue: [self class cache removeKey: aString].