bpm processes
getProcessInstanceWithId: id onApplications: collectionOfProcessDefinitions
	"Answer <aBpmProcessDefinition> with process id <id>"

	collectionOfProcessDefinitions do: [:eachDefinition | 
		(eachDefinition getProcessInstanceWith: id ifAbsent: [nil]) ifNotNil: [:object | ^object]].

	^nil