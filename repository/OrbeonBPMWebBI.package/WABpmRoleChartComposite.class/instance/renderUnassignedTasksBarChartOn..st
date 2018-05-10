other
renderUnassignedTasksBarChartOn: html
	| series chart data |

	data := OrderedCollection new.
	report := BpmFrontOfficeRole reportNumberOfUnassignedTasksFor: self getApplicationName.
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Tasks' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Number of Tasks'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: ('Unassigned Tasks per Role (', report getTotalValue printString, ')').
	chart subtitle text: 'Scope: Application Role [', self getApplicationName,']'.
	chart xAxis title text: 'Role Name'.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesForType: 'column')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart