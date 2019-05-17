other
getAffectedProcessesBy: anOrbeonPublishedFormDefinition
	"Answer a collection of <BpmProcessDefinition> that includes the form <anOrbeonPublishedFormDefinition> in its definition"

	^(self defaultProcessDefinitionClass getAllProcessDefinitionIn: application bpmEnvironment) select: [:procDefinition | 
		procDefinition getOrbeonTaskNames includes: anOrbeonPublishedFormDefinition formName.
	].