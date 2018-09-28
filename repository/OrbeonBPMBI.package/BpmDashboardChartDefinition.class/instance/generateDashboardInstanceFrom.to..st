other
generateDashboardInstanceFrom: startDate to: endDate
	| dashboard |

	dashboard := BpmDashboardInstance newForItemDefinition: self.
	self storeInstance: dashboard.

	(self hasDates and: [hasFixedDates not])
	ifTrue: [dashboard startDate: startDate;
								endDate: endDate;
								setChartDates].

	dashboard report: chartDefinition createDistributionReport.

	dashboard report xAxisIsDate ifTrue: [
		dashboard report createSecondayDistributionByYear.
		dashboard report createSecondayDistributionByMonth.
		dashboard report createSecondayDistributionByWeek.
	].
	

	^dashboard