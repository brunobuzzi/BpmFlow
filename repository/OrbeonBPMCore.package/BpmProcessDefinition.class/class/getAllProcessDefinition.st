query
getAllProcessDefinition
	"The receiver answer <anOrderedCollection> with all process definition <BpmProcessDefinition> in the System"
	| all |

	all := OrderedCollection new.
	self cache do: [:eachDictionary | 
		eachDictionary do: [:definitionCollection | all addAll: definitionCollection]. 
	].

	^all