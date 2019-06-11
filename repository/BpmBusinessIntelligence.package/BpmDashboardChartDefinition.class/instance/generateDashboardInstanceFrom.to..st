other
generateDashboardInstanceFrom: startDate to: endDate
	"The receiver create a new instance of <BpmDashboardInstance>. If needed update the start and end date of the corresponding <BpmChartDefinition>.
	When the Dashboard item was created <hasFixedDates> has to be set. 
	ifTrue: start date and end date are immutable and the item will render the Chart always in the same period of time.
	ifFalse: when the item is oudated then start and end date are changed and the item will render the Chart for the new period"
	| dashboard |

	dashboard := BpmDashboardInstance newForItemDefinition: self.
	self storeInstance: dashboard.

	(self hasDates and: [hasFixedDates not])
	ifTrue: [dashboard startDate: startDate;
								endDate: endDate;
								setChartDates]. "update the start date and end date of the <BpmChartDefinition>"

	dashboard report: chartDefinition createDistributionReport. "recalculate chart with new values"

	dashboard report xAxisIsDate ifTrue: [
		dashboard report createSecondaryDistributionByYear.
		dashboard report createSecondaryDistributionByMonth.
		dashboard report createSecondaryDistributionByWeek.
	].
	
	^dashboard