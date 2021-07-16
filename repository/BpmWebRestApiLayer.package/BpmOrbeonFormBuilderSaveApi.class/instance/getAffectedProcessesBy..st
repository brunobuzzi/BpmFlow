other
getAffectedProcessesBy: anOrbeonPublishedFormDefinition
	"Answer a collection of <BpmProcessDefinition> that includes the form <anOrbeonPublishedFormDefinition> in its definition"

	"issue #1162"
	anOrbeonPublishedFormDefinition hasBpmEnvironment 
	ifFalse: [ | env |
		env := systemRoot getExistingEnvironmentOrCreateNewNamed: anOrbeonPublishedFormDefinition applicationName.
		env registerApplication: anOrbeonPublishedFormDefinition application ifPresent: [] ifTaken: []].

	^anOrbeonPublishedFormDefinition application bpmEnvironment getAllProcessDefinitions select: [:procDefinition | 
		procDefinition getOrbeonTaskNames includes: anOrbeonPublishedFormDefinition formName.
	].