other
moveDown: aBpmChartDefinition
	| dashboardItemDef index |

	dashboardItemDef := self getDashboardItemDefinitionFor: aBpmChartDefinition.
	index := items indexOf: dashboardItemDef.
	(index = 0) ifTrue: [NoBpmDashboardItemException signal: 'No such DashboardItemDefinition'].
	
	(index >= items size) ifTrue: [BpmImproperOperationException signal: 'Chart Definiton Item can not be moved down'].

	items remove: dashboardItemDef ifAbsent: [NoBpmDashboardItemException signal: 'No such DashboardItemDefinition'].

	items add: dashboardItemDef beforeIndex: index + 1.