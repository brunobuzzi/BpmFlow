search area
searchByRoleScope
	| queryBlock |

	queryBlock := (('All' translateFor: self session user) = self getRoleName)
		ifTrue: [[:chart | chart applicationName = self getApplicationName]] 
		ifFalse: [[:chart | chart applicationName = self getApplicationName and: [chart roleName = self getRoleName]]].

	searchResult := self chartsRepository 
								getChartsIn: self session bpmEnvironment
								for: self session user 
								withScope: BpmChartRoleScope 
								satisfying: queryBlock