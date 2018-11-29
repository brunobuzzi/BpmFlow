searching
getNonTaskNodes

	^activities reject: [:each | each isTaskNode]