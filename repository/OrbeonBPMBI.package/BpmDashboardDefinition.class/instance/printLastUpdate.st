other
printLastUpdate

	dashboardInstances isEmpty ifTrue: [^'-'].

	^dashboardInstances last creationTime