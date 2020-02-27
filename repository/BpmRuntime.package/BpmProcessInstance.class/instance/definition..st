Updating
definition: aBpmProcessDefinition
	"The receiver set its definition with <aBpmProcessDefinition> and generate an unused id (see issue #1115).
	If the <newId> exist then it generate a newone in a loop until an unused <id> is created"
	| newId generator |

	definition := aBpmProcessDefinition.

	generator := Lag1MwcRandom new.
	newId := generator integer.

	[(definition getProcessInstanceWith: newId ifAbsent: []) notNil] whileTrue: [newId := generator integer]. "loop"

	self id: newId