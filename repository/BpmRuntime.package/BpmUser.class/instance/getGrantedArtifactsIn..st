processes
getGrantedArtifactsIn: aBpmEnviroment
	"Answer a collection of artifacts <BpmArtifactDefinition> granted to the receiver"
	| artifacts |

	artifacts := Set new.

	(self rolesIn: aBpmEnviroment) do: [:eachRole | eachRole tasksDo: [:task | artifacts add: task]].

	^artifacts asOrderedCollection