html render
renderExistingChartOn: html

	singleChartDefinitions do: [:each | each chartType renderReport: each report on: html]