html render
renderOn: html
	"The receiver create the distribution report <anAppDistributionReport> and store it in instance variable <report>.
	Then render the corresponding chart based on the chartType <aBpmChartType>"

	report := distribution createDistributionReport. "<anAppDistributionReport>"

	(dateGroupName = 'Year') ifTrue: [self createSecondayDistributionByYear].
	(dateGroupName = 'Month') ifTrue: [self createSecondayDistributionByMonth].
	(dateGroupName = 'Week') ifTrue: [self createSecondayDistributionByWeek].

	self chartType renderReport: report on: html