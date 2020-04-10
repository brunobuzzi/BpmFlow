processes
getProcessesDefinitionsFor: aBpmRole
	"Answer a collection of <BpmProcessDefiniton> which includes the role <aBpmRole>"

	^(self getAllProcessDefinitions select: [:procDef | procDef includesRole: aBpmRole]) asArray