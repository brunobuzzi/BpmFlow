unique id
generateUniqueId
	"The receiver generate an unique ID.
	See issue: #1115"
	| generator newId |

	generator := Lag1MwcRandom new.
	newId := generator integer.

	[(definition getProcessInstanceWith: newId ifAbsent: []) notNil] whileTrue: [newId := generator integer]. "loop"

	self id: newId.

	^newId