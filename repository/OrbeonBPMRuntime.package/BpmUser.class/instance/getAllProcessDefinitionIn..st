processes
getAllProcessDefinitionIn: aBpmEnvironment
	"Answer a collection with all process's definitions <BpmProcessDefinition> that the receiver has access"
	| allDefinitions definitionCache |

	allDefinitions := OrderedCollection new.
	definitionCache := self getProcessDefinitionCache.
	"backoffice user and admin --> can see all applications"
	((self isBackofficeUserAndAdmin) ifTrue: [self getVisibleApplicationsIn: aBpmEnvironment] ifFalse: [self getApplicationsIn: aBpmEnvironment]) 
		do: [:each | | appDictionary |
			appDictionary := definitionCache at: each applicationName ifAbsent: [OrderedCollection new].
			appDictionary do: [:procCollection |
				procCollection notEmpty
				ifTrue: [procCollection last isTopProcess 
							ifTrue: [allDefinitions addAll: procCollection]].
			].
		].

	^allDefinitions