other
createDashboard
	| dashboard dashboardName |

	dashboardName := self componentValueAt: 'dashboardName'.
	(dashboardName isNil or: [dashboardName isEmpty]) ifTrue: [^self].

	dashboard := BpmDashboardDefinition getDashboardNamed: dashboardName in: self session bpmEnvironment for: self session user.

	dashboard ifNotNil: [^self addChartToDashboard: dashboard].

	dashboard := BpmDashboardDefinition createNewDashboardDefinitionNamed: dashboardName in: self session bpmEnvironment for: self session user.
	dashboard description: (self componentValueAt: 'description');
		instanceRecursion: (self getRecursionFrom: (self componentValueAt: 'recursion')).

	dashboard addToCache.

	^self addChartToDashboard: dashboard