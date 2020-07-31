other
setRolesOfUnderlineProcess
	"For embedded sub processes the roles are inherit from the parent task definition.
	Embedded subprocess does not have Lanes --> they 'do not have' roles (roles are inherited)"
	| rolesHolderTask |

	self isEmbedded ifFalse: [^self]. "it is only applicable on embedded sub processes"

	"roles of the top process are inherit by all embedded subprocess"
	rolesHolderTask := processDefinition getTopSubProcessTaskDefinition ifNil: [self] ifNotNil: [:taskDef | taskDef]. 

	(subProcessDefinition getAllArtifacts reject: [:each | each isEventDefinition]) do: [:eachArtifact |  
		rolesHolderTask rolesDo: [:eachRole | eachArtifact grantRole: eachRole]]