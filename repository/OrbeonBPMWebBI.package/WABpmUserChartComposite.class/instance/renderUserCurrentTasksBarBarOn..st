other
renderUserCurrentTasksBarBarOn: html
	| series chart data |

	data := OrderedCollection new.
	report := self getSelectedUser reportCurrentTaskQuantity.
	report distributionKeysAndValuesDo: [:key :value | 
		data add: (ChartDatum belongingTo: key withValue: value).
	].
	
	series := ChartSeries named: 'Tasks' composedOf: data.
	
	html text: 'chart: '.
	chart := html highcharts newChart.
	chart yAxis title text: 'Number of Tasks'.
	chart legend enabled: false.
	chart chart type: 'column'.
	chart title text: 'User Tasks Distribution '.
	chart subtitle text: 'Scope: User'.
	chart xAxis title text: self getSelectedUser username.
	chart xAxis type: 'category'.
	chart plotOptions column colorByPoint: true.
	chart plotOptions column dataLabels enabled: true.
	(chart addSeriesForType: 'column')
		index: 0;
		name: series name;
		data: (series dataAsPointsOn: html).
	html div script: chart