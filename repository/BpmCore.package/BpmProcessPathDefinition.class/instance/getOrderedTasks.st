other
getOrderedTasks
	"The receiver answer <anOrderedCollection> with ordered task from <startEvent>.
	It recursively iterate over all out transitions storing each <endArtifact> in <anOrderedCollection>"

	^self getOrderedTasksFrom: startEvent as: OrderedCollection new