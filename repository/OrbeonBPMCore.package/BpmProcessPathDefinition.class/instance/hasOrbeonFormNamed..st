other
hasOrbeonFormNamed: aString
	"The receiver answer whether or not it hold a form <OrbeonFormDefinition> named <aString>"

	^(self hasTaskNamed: aString) and: [(self getTaskNamed: aString ifNone: [^false]) isOrbeonTask]