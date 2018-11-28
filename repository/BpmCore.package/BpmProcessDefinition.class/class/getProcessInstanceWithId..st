query
getProcessInstanceWithId: id
	"Answer <aBpmProcessDefinition> with process id <id>"

	^self getProcessInstanceWithId: id onApplications: self cache