html render
renderExistingChartOn: html atDiv: aWADivTag

	singleChartDefinitions do: [:each | each chartType renderReport: each report atDiv: aWADivTag]