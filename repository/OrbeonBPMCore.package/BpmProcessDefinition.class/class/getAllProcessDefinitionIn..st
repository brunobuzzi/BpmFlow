query
getAllProcessDefinitionIn: aBpmEnvironment
	"The receiver answer <anOrderedCollection> with all process definition <BpmProcessDefinition> in the System"
	| all |

	all := OrderedCollection new.
	self cache do: [:eachDictionary | 
		eachDictionary do: [:definitionCollection | all addAll: (definitionCollection select: [:each | each bpmEnvironment == aBpmEnvironment]) ]. 
	].

	^all