cache
addToCacheInAppName: aString
	"The receiver is added to the global UserGroup cache for the an <Application> named <aString>"
	| userGroupsCollection |

	application := self defaultApplicationManagerClass getAnyApplicationNamed: aString ifNone: [^NoApplicationException signal: 'No Application named <', aString, '>'].

	"get the usergroups's collection for the <Application> named <aString>"
	(self class cache includesKey: aString) ifFalse: [self class cache at: aString put: RcIdentityBag new].

	userGroupsCollection := self class cache at: aString. 

	"NOT possible to add two user groups with the same name"
	^userGroupsCollection detect: [:each | name = each name] ifNone: [userGroupsCollection add: self].