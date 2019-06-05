other
selectDashboard
	| dashboardDefinition |

	dashboardDefinition := (BpmDashboardRepository getDashboardsIn: self session bpmEnvironment for: self session user) 
										detect: [:each | each name = (self componentValueAt: 'dashboardName' ifAbsent: [''])]
										ifNone: [^self].

	self addChartToDashboard: dashboardDefinition