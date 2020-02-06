other
performDefaultAction
	| dashboardDefinition |

	dashboardDefinition := (self session bpmEnvironment getDashboardsFor: self session user) 
										detect: [:each | each name = (self componentValueAt: 'dashboardName' ifAbsent: [''])]
										ifNone: [^self].

	self addChartToDashboard: dashboardDefinition