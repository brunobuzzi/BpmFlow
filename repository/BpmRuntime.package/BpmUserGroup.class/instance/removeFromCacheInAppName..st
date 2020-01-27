cache
removeFromCacheInAppName: aString
	"The receiver is removed from the global UserGroup cache for the <anApplication> named <aString>"

	application := self defaultApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	^(self class cache at: aString) remove: self ifAbsent: [^NoSuchUserGroupException signal: 'No User Group named <', name, '>'].