other
canCreateProcess: aBpmUser
	"Answer whether or not the user <aBpmUser> can create a process instance of the receiver"

	aBpmUser ifNil: [^true]. "a process can be create with anonymous user"

	^(startEvent outTransitions collect: [:trDefinition | trDefinition endArtifact]) 
			anySatisfy: [:artifactDefinition | 
									artifactDefinition hasPerformers "if has performers --> only the first can create the process instance"
									ifFalse: [artifactDefinition isGrantedUser: aBpmUser]
									ifTrue: [aBpmUser includesRoleNamed: artifactDefinition getFirstPerformerName]
			]