query
getAllArtifactInstancesIn: aBpmEnvironment
	| all |

	all := Set new.
	(self getAllProcessInstancesIn: aBpmEnvironment) do: [:eachInstance | 
		all addAll: eachInstance getAllArtifacts. 
	].

	^all