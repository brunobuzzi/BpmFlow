visiting
getLeafNodes
	"Answer a collection with leaf (bottom) nodes of the tree"

	^allNodes reject: [:each | each hasChildren]