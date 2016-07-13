*orbeonBPMXpdl
createBpmDefinition

	^(self getType = 'ROLE')
		ifTrue: [BpmRoleParticipantDefinition new name: self getName] 
		ifFalse:  [BpmResourceParticipantDefinition new name: self getName]