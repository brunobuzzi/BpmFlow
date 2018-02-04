roles
getRoleForPerformer: aBpmRoleParticipantDefinition
	"The receiver answer the associated <BpmRole> to the participant <aBpmRoleParticipantDefinition>"

	^roles detect: [:each | each name = aBpmRoleParticipantDefinition name] ifNone: [nil]