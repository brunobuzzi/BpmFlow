other
getCurrentDashboardItems

	^instancesToRender isEmpty 
		ifTrue: [selectedLateralItem getLastDashboardInstances] 
		ifFalse: [instancesToRender]