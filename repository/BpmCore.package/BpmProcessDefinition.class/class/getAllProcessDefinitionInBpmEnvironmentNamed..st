query
getAllProcessDefinitionInBpmEnvironmentNamed: aString
	"The receiver answer <anOrderedCollection> with all process definition <BpmProcessDefinition> in <BpmEnvironment> named <aString>"
	| all |

	all := OrderedCollection new.
	self cache do: [:eachDictionary | 
		eachDictionary do: [:definitionCollection | all addAll: (definitionCollection select: [:each | each bpmEnvironment name = aString]) ]. 
	].

	^all