other
renderChartTypeComboOn: html

	^self renderChartTypeComboOn: html withCharts: (#('Bar Chart' 'Pie Chart') collect: [:each | each translateFor: self session user])