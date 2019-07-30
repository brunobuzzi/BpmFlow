script
executeScript
	"The receiver execute the Script"
	"The script block setup in Bizagi must be:
	[:script :process | ] "
	| result |

	"block arguments [:aBpmScriptTaskInstance :aBpmProcessInstance"
	result := self getScriptBlock value: self value: process.

	self finalize.

	^result