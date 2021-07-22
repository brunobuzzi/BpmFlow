applications
hasAnyProcessInApplicationNamed: appName
	"Answer whether or not the Application named <aString> has any BpmProcessDefinition"
	| application |

	application := self applicationNamed: appName ifNone: [^#()].

	^application getAllProcessDefinitions notEmpty