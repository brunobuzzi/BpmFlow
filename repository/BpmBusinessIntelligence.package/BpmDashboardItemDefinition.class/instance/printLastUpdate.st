other
printLastUpdate

	dashboardInstances isEmpty ifTrue: [^'-'].

	^dashboardInstances last printLastUpdate