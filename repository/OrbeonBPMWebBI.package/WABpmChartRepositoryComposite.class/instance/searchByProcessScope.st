search area
searchByProcessScope
	| queryBlock |

	queryBlock := (self getVersion = ('All' translateFor: self session user))
		ifTrue: [[:chart | chart applicationName = self getApplicationName and: [chart processName = self getProcessName]]]
		ifFalse: [[:chart | chart applicationName = self getApplicationName and: [chart processName = self getProcessName and: [chart processVersion = self getVersion asInteger]]]].

	searchResult := self chartsRepository 
									getChartsIn: self session bpmEnvironment
									for: self session user 
									withScope: BpmChartProcessScope 
									satisfying: queryBlock