other
getAllWorkflows
	"Answer a collection with all worflows all packages"

	^self getAllPools collect: [:each | each workflow]