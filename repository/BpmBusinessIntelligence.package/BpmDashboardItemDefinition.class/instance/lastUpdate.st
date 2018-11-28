other
lastUpdate

	dashboardInstances isEmpty ifTrue: [^TimeStamp fromString: '01/01/1970'].

	^dashboardInstances last lastUpdate