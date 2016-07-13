processes
getAllProcessDefinition
	"Answer a collection with all process's definitions <BpmProcessDefinition> that the receiver has access"
	| allDefinitions definitionCache |

	allDefinitions := OrderedCollection new.
	definitionCache := self getProcessDefinitionCache.
	"backoffice user and admin --> can see all applications"
	((self isBackofficeUserAndAdmin) ifTrue: [self getVisibleApplications] ifFalse: [self getApplications]) 
		do: [:each | | appDictionary |
			appDictionary := definitionCache at: each applicationName ifAbsent: [OrderedCollection new].
			appDictionary do: [:procCollection |
				procCollection notEmpty
				ifTrue: [procCollection last isTopProcess 
							ifTrue: [allDefinitions addAll: procCollection]].
			].
		].

	^allDefinitions