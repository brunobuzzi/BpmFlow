other
generateDashboardInstanceFrom: startDate to: endDate
	| dashboard |

	dashboard := BpmDashboardInstance newForItemDefinition: self.

	(self hasDates and: [hasFixedDates not])
	ifTrue: [dashboard startDate: startDate;
								endDate: endDate;
								setChartDates].

	^dashboard