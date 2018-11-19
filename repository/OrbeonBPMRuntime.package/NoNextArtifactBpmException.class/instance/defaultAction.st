other
defaultAction
	"The receiver send a message to all users with to role in the <bpmArtifact> to notify the situation"

	bpmArtifact getRoles do: [:eachRole | 
		eachRole users do: [:eachUser | 
			
		]. 
	].