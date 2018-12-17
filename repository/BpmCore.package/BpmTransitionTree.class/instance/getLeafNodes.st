visiting
getLeafNodes

	^allNodes reject: [:each | each hasChildren]