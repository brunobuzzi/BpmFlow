search area
searchByUserScope
	| queryBlock |

	queryBlock := (self getUserName = ('All' translateFor: self session user)) 
		ifTrue: [[:chart | true]] 
		ifFalse: [[:chart | chart scopeUsername = self getUserName]].

	searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartUserScope satisfying: queryBlock