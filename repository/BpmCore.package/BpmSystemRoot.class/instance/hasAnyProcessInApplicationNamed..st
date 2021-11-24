applications
hasAnyProcessInApplicationNamed: appName
	"Answer whether or not the Application named <aString> has any BpmProcessDefinition"
	| application |

	application := self applicationNamed: appName ifNone: [^false].

	^application getAllProcessDefinitions notEmpty