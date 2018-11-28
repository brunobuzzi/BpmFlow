other
getSheetName

	^self isEmbedded
	ifFalse: [parentPool getSheetName]
	ifTrue: [parentWorkflow getSheetName].