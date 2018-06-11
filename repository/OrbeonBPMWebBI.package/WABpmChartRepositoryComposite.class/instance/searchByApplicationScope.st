search area
searchByApplicationScope

	searchResult := self chartsRepository 
									getChartsFor: self session user 
									withScope: BpmChartApplicationScope 
									satisfying: [:chart | chart applicationName = self getApplicationName]