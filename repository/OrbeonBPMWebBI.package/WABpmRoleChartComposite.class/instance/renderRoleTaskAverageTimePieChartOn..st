other
renderRoleTaskAverageTimePieChartOn: html
	| chart series data |

	data := OrderedCollection new.
	report := self getSelectedRole reportAverageTimeDistributionForAllTasks.
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Time (s)' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Time (s)'.
	chart legend enabled: false.
	chart chart type: 'pie'.
	chart title text: 'Average Time for Role Tasks'.
	chart subtitle text: 'Scope: Application Role [', self getApplicationName,']'.
	chart xAxis title text: 'Role Name'.
	chart xAxis type: 'category'.
	"chart plotOptions pie colorByPoint: true."
	chart plotOptions pie dataLabels enabled: true.
	(chart addSeriesForType: 'pie')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart