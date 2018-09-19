search area
searchByMultiFieldScope

	searchResult := self chartsRepository 
									getChartsIn: self session bpmEnvironment
									for: self session user 
									withScope: BpmChartMultipleFieldsScope
									satisfying: [:chart | true]