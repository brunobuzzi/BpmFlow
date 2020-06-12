search area
searchByFieldMultiValueScope

	searchResult := self session bpmEnvironment 
									getChartsFor: self session user 
									withScope: BpmChartMultipleValueFieldScope
									satisfying: [:chart | true].