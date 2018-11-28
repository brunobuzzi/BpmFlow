other
searchBy: aSymbol
	| valueToSearch targetList |
	
	valueToSearch := self componentValueAt: 'searchValue'.

	targetList := (aSymbol = #username) ifTrue: [usersBatchedList] ifFalse: [tasksBatchedList].

	targetList 
		items: (targetList getInitialItems select: [:each |  | columnValue |
					columnValue := each perform: aSymbol.
					valueToSearch match: columnValue]).