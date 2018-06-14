html render
renderOn: html
	"The receiver create the distribution report <anAppDistributionReport> and store it in instance variable <report>.
	Then render the corresponding chart based on the chartType <aBpmChartType>"

	report := distribution createDistributionReport. "<anAppDistributionReport>"

	(dateGroupName = 'Year') ifTrue: [report createSecondayDistributionByYear].
	(dateGroupName = 'Month') ifTrue: [report createSecondayDistributionByMonth].
	(dateGroupName = 'Week') ifTrue: [report createSecondayDistributionByWeek].

	self chartType renderReport: report on: html