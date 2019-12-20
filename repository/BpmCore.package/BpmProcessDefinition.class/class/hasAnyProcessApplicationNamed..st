query
hasAnyProcessApplicationNamed: aString
	"Answer whether or not the Application named <aString> has any BpmProcessDefinition"

	^(self cache includesKey: aString) and: [(self cache at: aString) notEmpty]