search area
searchByMultiFieldScope

	searchResult := self session bpmEnvironment
									getChartsFor: self session user 
									withScope: BpmChartMultipleFieldsScope
									satisfying: [:chart | true].