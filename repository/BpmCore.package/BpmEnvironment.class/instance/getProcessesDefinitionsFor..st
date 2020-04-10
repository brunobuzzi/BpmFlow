processes
getProcessesDefinitionsFor: aBpmRole
	"Answer a collection of <BpmProcessDefiniton> which includes the role <aBpmRole> or <aBpmRoleParticipantDefinition> with the same name of <aBpmRole>"

	^(self getAllProcessDefinitions select: [:procDef | (procDef includesRole: aBpmRole) or: [procDef includesParticipantNamed: aBpmRole name]]) asArray