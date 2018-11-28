query
getLatestProcessDefinitions
	"The receiver answer <anOrderedCollection> with the latest process definition <BpmProcessDefinition> in the System"
	| all |

	all := OrderedCollection new.
	self cache do: [:eachDictionary | 
		eachDictionary do: [:definitionCollection | definitionCollection notEmpty ifTrue: [all add: definitionCollection last]]. 
	].

	^all