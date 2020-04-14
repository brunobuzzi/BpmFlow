search area
searchByFieldMultiValueScope

	searchResult := self chartsRepository 
									getChartsFor: self session user 
									withScope: BpmChartMultipleValueFieldScope
									satisfying: [:chart | true].