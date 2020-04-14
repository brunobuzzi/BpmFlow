other
addChartToDashboard: aBIDashboardDefinition
	| chartDefinition item |

	chartDefinition := parent selectedLateralItem.

	item := BIDashboardChartDefinition newForDashboard: aBIDashboardDefinition.
	item chartDefinition: chartDefinition clone;
		recursion: (self getRecursionFrom: (self componentValueAt: 'recursion'));
		hasFixedDates: (self componentValueAt: 'hasFixedDates' ifAbsent: [false]).

	item recursion modifyStartDateOnUpdate: (self componentValueAt: 'modifyStartDateOnUpdate' ifAbsent: [false]).

	aBIDashboardDefinition addItem: item