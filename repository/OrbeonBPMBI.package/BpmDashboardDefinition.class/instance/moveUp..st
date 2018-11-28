other
moveUp: aBpmChartDefinition
	| dashboardItemDef index |

	dashboardItemDef := self getDashboardItemDefinitionFor: aBpmChartDefinition.
	index := items indexOf: dashboardItemDef.
	(index = 0) ifTrue: [NoBpmDashboardItemException signal: 'No such DashboardItemDefinition'].

	((index - 1) > 0) ifFalse: [ImproperBpmOperationException signal: 'Chart Definiton Item can not be moved up'].

	items remove: dashboardItemDef ifAbsent: [NoBpmDashboardItemException signal: 'No such DashboardItemDefinition'].

	items add: dashboardItemDef beforeIndex: index - 1.