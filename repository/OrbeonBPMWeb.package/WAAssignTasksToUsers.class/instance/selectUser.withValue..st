other
selectUser: aBpmUser withValue: aBoolean

	aBoolean 
	ifTrue: [assignationTable at: selectedTask put: aBpmUser] 
	ifFalse: [assignationTable removeKey: selectedTask ifAbsent: []].