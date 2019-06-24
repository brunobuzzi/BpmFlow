dates handler
setChartDates

	self hasDates ifFalse: [^self].

	self getChartDefinition setDistributionStartDate: startDate.

	self getChartDefinition setDistributionEndDate: endDate.