search area
searchByRoleScope
	| queryBlock |

	queryBlock := (('All' translateIn: self session) = self getRoleName)
		ifTrue: [[:chart | chart applicationName = self getApplicationName]] 
		ifFalse: [[:chart | chart applicationName = self getApplicationName and: [chart roleName = self getRoleName]]].

	searchResult := self session bpmEnvironment
								getChartsFor: self session user 
								withScope: BpmChartRoleScope 
								satisfying: queryBlock