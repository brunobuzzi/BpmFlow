query
getAllProcessInstances
	"The receiver answer <aSet> with all process instances <BpmProcessInstance> in the System"
	| all |

	all := Set new.
	self cache do: [:eachDictionary | 
		eachDictionary do: [:definitionCollection | definitionCollection 
			do: [:eachDef | all addAll: eachDef processInstances asArray]]. 
	].

	^all