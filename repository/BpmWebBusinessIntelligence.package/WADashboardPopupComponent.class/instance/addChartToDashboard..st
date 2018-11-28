other
addChartToDashboard: aBpmDashboardDefinition
	| chartDefinition item |

	chartDefinition := parent selectedLateralItem.

	item := BpmDashboardChartDefinition newForDashboard: aBpmDashboardDefinition.
	item chartDefinition: chartDefinition;
		recursion: (self getRecursionFrom: (self componentValueAt: 'recursion'));
		hasFixedDates: (self componentValueAt: 'hasFixedDates').

	item recursion modifyStartDateOnUpdate: (self componentValueAt: 'modifyStartDateOnUpdate').

	aBpmDashboardDefinition addItem: item