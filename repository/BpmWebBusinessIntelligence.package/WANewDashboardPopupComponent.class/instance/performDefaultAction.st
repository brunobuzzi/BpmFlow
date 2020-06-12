other
performDefaultAction
	| dashboard dashboardName |

	dashboardName := self componentValueAt: 'dashboardName'.
	(dashboardName isNil or: [dashboardName isEmpty]) ifTrue: [^self].

	dashboard := BIDashboardDefinition createNewDashboardDefinitionNamed: dashboardName for: self session user.
	dashboard description: (self componentValueAt: 'description' ifAbsent: ['']).
	dashboard isActive: (self componentValueAt: 'isActive' ifAbsent: [false]).
	dashboard isPrivate: (self componentValueAt: 'isPrivate' ifAbsent: [false]).

	self session bpmEnvironment storeDashboard: dashboard.

	^self addChartToDashboard: dashboard