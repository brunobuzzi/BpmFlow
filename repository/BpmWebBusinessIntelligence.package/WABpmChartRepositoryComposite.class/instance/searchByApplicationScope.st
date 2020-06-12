search area
searchByApplicationScope

	searchResult := self session bpmEnvironment 
									getChartsFor: self session user 
									withScope: BpmChartApplicationScope 
									satisfying: [:chart | chart applicationName = self getApplicationName]