query
hasAnyProcessInApplicationNamed: aString
	"Answer whether or not the Application named <aString> has any BpmProcessDefinition"
	| application |

	application := self defaultApplicationManagerClass applicationNamed: aString ifNone: [^#()].

	^application getAllProcessDefinitions notEmpty