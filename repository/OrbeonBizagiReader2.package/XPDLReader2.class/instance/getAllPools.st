other
getAllPools
	"Answer a collection with all XPDLPoolNode of the receiver"
	| allPools |

	allPools := OrderedCollection new.

	xpdlPackages do: [:each | allPools addAll: each pools].

	^allPools