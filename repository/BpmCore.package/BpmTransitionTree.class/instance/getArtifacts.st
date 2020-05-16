visiting
getArtifacts
	| artifacts |

	artifacts := Set new.

	allNodes do: [:each | artifacts add: each startArtifact; add: each endArtifact].

	^artifacts