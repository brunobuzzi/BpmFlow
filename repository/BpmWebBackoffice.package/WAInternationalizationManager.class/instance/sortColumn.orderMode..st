other
sortColumn: sortBlock orderMode: aSymbol

	self sewafTableForInternationalizations rows: ((aSymbol = #asc) 
																ifTrue: [(self getEnvironmentList asSortedCollection: sortBlock) reverse] 
																ifFalse: [self getEnvironmentList asSortedCollection: sortBlock]).