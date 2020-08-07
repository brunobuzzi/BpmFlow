visiting
getArtifactsSize
	| artifacts |

	artifacts := Set new.

	allNodes do: [:trDefinition | 
						trDefinition startArtifactDo: [:start | artifacts add: start].
						trDefinition endArtifactDo: [:end | artifacts add: end].
	].

	^artifacts size