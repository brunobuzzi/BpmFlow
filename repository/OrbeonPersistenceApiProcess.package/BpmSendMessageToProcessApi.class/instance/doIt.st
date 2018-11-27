other
doIt
	| message processInstance |

	self setValuesFromBody.
	message := self createExternalMessage.

	processInstance := (id = '0')
		ifTrue: [self getBpmProcessInstanceFromQuery] 
		ifFalse: [self getBpmProcessInstanceFromId].