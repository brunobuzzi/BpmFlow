other
addChartToDashboard: aBpmDashboardDefinition
	| chartDefinition item |

	chartDefinition := parent selectedLateralItem.

	item := BpmDashboardChartDefinition newForDashboard: aBpmDashboardDefinition.
	item chartDefinition: chartDefinition;
		recursion: (self getRecursionFrom: (self componentValueAt: 'recursion'));
		hasFixedDates: (self componentValueAt: 'hasFixedDates' ifAbsent: [false]).

	item recursion modifyStartDateOnUpdate: (self componentValueAt: 'modifyStartDateOnUpdate' ifAbsent: [false]).

	aBpmDashboardDefinition addItem: item