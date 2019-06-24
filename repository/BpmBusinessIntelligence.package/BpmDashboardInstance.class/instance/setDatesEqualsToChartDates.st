dates handler
setDatesEqualsToChartDates

	self hasDates ifFalse: [^self].

	startDate := self getChartDefinition startDate.

	endDate := self getChartDefinition endDate.