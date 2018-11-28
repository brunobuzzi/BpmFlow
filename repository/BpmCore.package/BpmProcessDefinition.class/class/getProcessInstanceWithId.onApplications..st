query
getProcessInstanceWithId: id onApplications: partialDictionaryCache
	"Answer <aBpmProcessDefinition> with process id <id>"

	partialDictionaryCache do: [:eachDefinitionDictionary | 
		eachDefinitionDictionary do: [:eachDefinitionCollection | 
			eachDefinitionCollection do: [:eachDefinition | 
				(eachDefinition getProcessInstanceWith: id ifAbsent: [nil]) ifNotNil: [:object | ^object]]
		].
	].

	^nil