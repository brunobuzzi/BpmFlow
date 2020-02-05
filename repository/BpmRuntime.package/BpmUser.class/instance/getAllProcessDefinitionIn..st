processes
getAllProcessDefinitionIn: aBpmEnvironment
	"Answer a collection with all process's definitions <BpmProcessDefinition> that the receiver has access"
	| allDefinitions |

	allDefinitions := OrderedCollection new.
	"backoffice user and admin --> can see all applications"
	(self getVisibleApplicationsIn: aBpmEnvironment) do: [:eachApp | 
			allDefinitions addAll: eachApp getAllProcessDefinitions.
		].

	^allDefinitions