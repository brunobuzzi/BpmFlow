processes
getGrantedArtifacts
	"Answer a collection of artifacts <BpmArtifactDefinition> granted to the receiver"
	| artifacts |

	artifacts := Set new.

	roles do: [:each | artifacts addAll: each tasks].

	^artifacts asOrderedCollection