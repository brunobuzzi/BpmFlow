html render
renderOn: html
	"The receiver create the distribution report <anAppDistributionReport> and store it in instance variable <report>.
	Then render the corresponding chart based on the chartType <aBpmChartType>"

	report := distribution createDistributionReport. "<anAppDistributionReport>"

	self xAxisIsDate ifTrue: [
		self createSecondayDistributionByYear.
		self createSecondayDistributionByMonth.
		self createSecondayDistributionByWeek.
	].

	self chartType renderReport: report on: html