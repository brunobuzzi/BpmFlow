other
getAllPools
	"Answer a collection with all sub process nodes of all pools"
	| allPools |

	allPools := OrderedCollection new.

	xpdlPackages do: [:each | allPools addAll: each pools].

	^allPools