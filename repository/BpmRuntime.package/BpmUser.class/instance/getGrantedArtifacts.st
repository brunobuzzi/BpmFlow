processes
getGrantedArtifacts
	"Answer a collection of artifacts <BpmArtifactDefinition> granted to the receiver"
	| artifacts |

	artifacts := Set new.

	roles do: [:eachRole | eachRole tasksDo: [:task | artifacts add: task]].

	^artifacts asOrderedCollection