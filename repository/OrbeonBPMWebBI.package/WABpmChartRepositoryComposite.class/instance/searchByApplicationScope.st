search area
searchByApplicationScope

	searchResult := self chartsRepository 
									getChartsIn: self session bpmEnvironment
									for: self session user 
									withScope: BpmChartApplicationScope 
									satisfying: [:chart | chart applicationName = self getApplicationName]