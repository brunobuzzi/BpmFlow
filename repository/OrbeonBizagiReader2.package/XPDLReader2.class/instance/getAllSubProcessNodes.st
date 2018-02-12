enumerating
getAllSubProcessNodes
	"Answer a collection with all sub process nodes of all pools"
	| subProcessNodes |

	subProcessNodes := OrderedCollection new.

	xpdlPackages do: [:each | subProcessNodes addAll: each getAllSubProcessNodes].

	^subProcessNodes