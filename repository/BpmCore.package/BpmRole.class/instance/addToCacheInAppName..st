other
addToCacheInAppName: aString
	"The receiver is added to the global Role cache for the an <Application> named <aString>"
	| roleCollection |

	application := self defaultApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	"get the role's collection for the <Application> named <aString>"
	(self class cache includesKey: aString) ifFalse: [self class cache at: aString put: RcIdentityBag new].

	roleCollection := self class cache at: aString. 

	"NOT possible to add two roles with the same name"
	^roleCollection detect: [:each | name = each name] ifNone: [roleCollection add: self].