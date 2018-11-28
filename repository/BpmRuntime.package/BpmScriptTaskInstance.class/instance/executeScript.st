script
executeScript
	"The receiver execute the Script"
	"The script block setup in Bizagi must be:
	[:script :process | ] "

	^self getScriptBlock 
				value: self 			"aBpmScriptTaskInstance"
				value: process		"aBpmProcessInstance"