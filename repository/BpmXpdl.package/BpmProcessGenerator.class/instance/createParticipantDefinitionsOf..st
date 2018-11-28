process definition creation
createParticipantDefinitionsOf: aXPDLPackageNode
	"The receiver create the GLOBAL participants <BpmParticipantDefinition> for all processes to be imported"

	aXPDLPackageNode participants do: [:participantNode |
		participants add: participantNode createBpmDefinition]