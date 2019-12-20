cache
removeAllDefinitions
	"Remove all defined <BpmProcessDefinition> and unassign roles from process's artifacts"

	self cache do: [:eachDictionary | 
		eachDictionary do: [:procCollection | 
			procCollection do: [:eachProc | 
				eachProc getAllArtifacts do: [:eachArt | eachArt ungrantAllRoles]. "remove tasks from roles"
			].
		].
	].

	^self initializeCache