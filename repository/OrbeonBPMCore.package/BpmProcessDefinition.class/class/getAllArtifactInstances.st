query
getAllArtifactInstances
	| all |

	all := Set new.
	self getAllProcessInstances do: [:eachInstance | 
		all addAll: eachInstance getAllArtifacts. 
	].

	^all