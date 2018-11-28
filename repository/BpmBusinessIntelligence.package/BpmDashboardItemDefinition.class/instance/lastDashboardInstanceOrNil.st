dashboard instances
lastDashboardInstanceOrNil

	^dashboardInstances isEmpty ifTrue:[nil] ifFalse: [dashboardInstances last]