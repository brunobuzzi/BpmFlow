other
addChartToDashboard: aBpmDashboardDefinition
	| chartDefinition item |

	chartDefinition := parent selectedLateralItem.

	item := BpmDashboardChartDefinition newForDashboard: aBpmDashboardDefinition.
	item chartDefinition: chartDefinition.

	aBpmDashboardDefinition addItem: item