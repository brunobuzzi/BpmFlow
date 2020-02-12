search area
searchByUserScope
	| queryBlock |

	queryBlock := (self getUserName = ('All' translateIn: self session)) 
		ifTrue: [[:chart | true]] 
		ifFalse: [[:chart | chart scopeUsername = self getUserName]].

	searchResult := self chartsRepository getChartsFor: self session user withScope: BpmChartUserScope satisfying: queryBlock