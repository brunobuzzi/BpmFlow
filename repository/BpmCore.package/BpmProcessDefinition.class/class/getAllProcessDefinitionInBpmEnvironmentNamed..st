query
getAllProcessDefinitionInBpmEnvironmentNamed: aString
	"The receiver answer <anOrderedCollection> with all process definition <BpmProcessDefinition> in <BpmEnvironment> named <aString>"
	| environment |

	environment := self defaultEnvironmentClass getEnvironmentNamed: aString ifNone: [^#()].

	^environment getAllProcessDefinitions