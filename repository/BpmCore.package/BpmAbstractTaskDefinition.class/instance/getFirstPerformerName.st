roles
getFirstPerformerName
	"The receiver answer the name of the first performers if there is no performers answer an empty string"

	^self hasPerformers 
		ifTrue: [performers first name] 
		ifFalse: ['']