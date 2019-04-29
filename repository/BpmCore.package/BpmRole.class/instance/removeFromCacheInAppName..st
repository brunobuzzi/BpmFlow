other
removeFromCacheInAppName: aString
	"The receiver is removed from the global Role cache for the <anApplication> named <aString>.
	Application names are unique through the System (including <BpmEnvironment>s)"

	application := self defaultApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	^(self class cache at: aString) remove: self ifAbsent: [^NoSuchRoleException signal: 'No Role named <', name, '>'].