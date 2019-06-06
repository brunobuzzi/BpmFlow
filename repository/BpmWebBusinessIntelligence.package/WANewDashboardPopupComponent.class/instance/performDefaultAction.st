other
performDefaultAction
	| dashboard dashboardName |

	dashboardName := self componentValueAt: 'dashboardName'.
	(dashboardName isNil or: [dashboardName isEmpty]) ifTrue: [^self].

	dashboard := BpmDashboardDefinition createNewDashboardDefinitionNamed: dashboardName in: self session bpmEnvironment for: self session user.
	dashboard description: (self componentValueAt: 'description' ifAbsent: ['']).
	dashboard isActive: (self componentValueAt: 'isActive' ifAbsent: [false]).
	dashboard isPrivate: (self componentValueAt: 'isPrivate' ifAbsent: [false]).

	dashboard addToCache.

	^self addChartToDashboard: dashboard