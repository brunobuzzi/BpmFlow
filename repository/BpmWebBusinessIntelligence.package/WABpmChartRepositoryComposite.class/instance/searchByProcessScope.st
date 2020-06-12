search area
searchByProcessScope
	| queryBlock |

	queryBlock := (self getVersion = ('All' translateIn: self session))
		ifTrue: [[:chart | chart applicationName = self getApplicationName and: [chart processName = self getProcessName]]]
		ifFalse: [[:chart | chart applicationName = self getApplicationName and: [chart processName = self getProcessName and: [chart processVersion = self getVersion asInteger]]]].

	searchResult := self session bpmEnvironment 
									getChartsFor: self session user 
									withScope: BpmChartProcessScope 
									satisfying: queryBlock