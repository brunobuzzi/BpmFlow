html render
renderChart2: aHighchart distributions: distributionCollection chartsTypes: seriesClassCollection on: html
	| mainDistribution data serieClass yAxis xAxis |

	distributionCollection ifEmpty: [^self].

	yAxis := #('Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday').
	xAxis := #('John' 'Paul').	
	mainDistribution := distributionCollection at: 1.
	aHighchart addYAxis categories: yAxis.
	aHighchart yAxis first title text: 'Days'.
"	aHighchart legend enabled: false."
	aHighchart title text: mainDistribution name.
	aHighchart subtitle text: mainDistribution description.
	aHighchart xAxis title text: 'Weeks'.
	aHighchart xAxis categories: xAxis.
	aHighchart chart type: 'heatmap'.

		data := #(#(0 0 13) #(0 1 25) #(0 4 15) #(0 5 10) #(0 6 12) #(1 0 29) #(1 1 5) #(1 2 10) #(1 3 10) #(1 4 17) #(1 5 8) #(1 6 4)).
		"data := #(#(0 0 13) #(0 1 25) #(0 2 1) #(1 0 2) #(1 1 5) #(1 2 20) #(2 0 3) #(2 1 0) #(2 2 18)) 
					collect: [:each | ChartDatum new initializeNamed: (xAxis at: (each at: 1) + 1) locatedAt: (yAxis at: (each at: 2) + 1) and: (each at: 3) colorOptional: Optional unused].
		serie := ChartSeries named: 'Test Heat Map' composedOf: data creatingChartSeriesWith: #addLineSeries configuredUsing: [ :aHighchartSeries | ]."
		serieClass := seriesClassCollection at: 1.
		(aHighchart addSeriesOf: HighchartsSeriesHeatmap)
			name: 'Test';
			data: data.

	html div script: aHighchart.