other
renderNumberOfUsersPieBarChartOn: html
	| chart series data |

	data := OrderedCollection new.
	report := BpmFrontOfficeRole reportNumberOfUsersDistributionFor: self getApplicationName.	
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Number of Users' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Number of Users'.
	chart legend enabled: false.
	chart chart type: 'pie'.
	chart title text: ('Users Distribution per Role (', report getTotalValue printString, ')').
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