cache
addToCacheInAppName: aString
	"The receiver is added to <Application> named <aString>"

	application := self systemRoot applicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	^application addRole: self