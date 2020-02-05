other
getAffectedProcessesBy: anOrbeonPublishedFormDefinition
	"Answer a collection of <BpmProcessDefinition> that includes the form <anOrbeonPublishedFormDefinition> in its definition"

	^application bpmEnvironment getAllProcessDefinitions select: [:procDefinition | 
		procDefinition getOrbeonTaskNames includes: anOrbeonPublishedFormDefinition formName.
	].