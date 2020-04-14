html render
renderOn: html
	"The receiver create the distribution report <anAppDistributionReport> and store it in instance variable <report>.
	Then render the corresponding chart based on the chartType <aBpmChartType>"

	report := self createDistributionReport. "<anAppDistributionReport>"

	self xAxisIsDate ifTrue: [
		self createSecondaryDistributionByYear.
		self createSecondaryDistributionByMonth.
		self createSecondaryDistributionByWeek.
	].

	self chartType renderReport: report on: html