query
getAllProcessInstances
	| all |

	all := Set new.
	self cache do: [:eachDictionary | 
		eachDictionary do: [:definitionCollection | definitionCollection do: [:eachDef | all addAll: eachDef processInstances asArray]]. 
	].

	^all