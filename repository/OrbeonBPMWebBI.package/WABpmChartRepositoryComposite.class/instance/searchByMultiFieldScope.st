search area
searchByMultiFieldScope

	searchResult := self chartsRepository 
									getChartsFor: self session user 
									withScope: BpmChartMultipleFieldsScope
									satisfying: [:chart | true]