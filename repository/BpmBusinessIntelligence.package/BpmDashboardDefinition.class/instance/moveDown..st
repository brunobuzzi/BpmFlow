other
moveDown: aBpmDashboardChartDefinition
	| dashboardItemDef index |

	dashboardItemDef := self getDashboardItemDefinitionFor: aBpmDashboardChartDefinition.
	index := items indexOf: dashboardItemDef.
	(index = 0) ifTrue: [NoBpmDashboardItemException signal: 'No such DashboardItemDefinition'].
	
	(index >= items size) ifTrue: [ImproperBpmOperationException signal: 'Chart Definiton Item can not be moved down'].

	items remove: dashboardItemDef ifAbsent: [NoBpmDashboardItemException signal: 'No such DashboardItemDefinition'].

	items add: dashboardItemDef beforeIndex: index + 1.