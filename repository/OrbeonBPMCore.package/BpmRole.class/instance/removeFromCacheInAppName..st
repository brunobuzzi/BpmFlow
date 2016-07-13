other
removeFromCacheInAppName: aString
	"The receiver is added to the global Role cache for the an OrbeonApplication named <aString>"

	application := self getApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	^(self class cache at: aString) remove: self ifAbsent: [^NoSuchRoleException signal: 'No Role named <', name, '>'].