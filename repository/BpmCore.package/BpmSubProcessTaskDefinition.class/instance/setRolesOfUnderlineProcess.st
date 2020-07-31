other
setRolesOfUnderlineProcess
	"For embedded sub processes the roles are inherit from the parent task definition.
	Embedded subprocess does not have Lanes --> they 'do not have' roles (roles are inherited)"
	| taskDefRoles |

	self isEmbedded ifFalse: [^self]. "it is only applicable on embedded sub processes"

	"roles of the top process are inherit by all embedded subprocess"
	taskDefRoles := processDefinition getParentTopSubProcessTaskDefinition ifNil: [roles] ifNotNil: [:taskDef | taskDef roles]. 

	(subProcessDefinition getAllArtifacts reject: [:each | each isEventDefinition]) do: [:eachArtifact |  
		taskDefRoles do: [:eachRole | eachArtifact grantRole: eachRole]]