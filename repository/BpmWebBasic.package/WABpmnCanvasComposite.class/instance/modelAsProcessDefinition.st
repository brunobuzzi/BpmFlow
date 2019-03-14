other
modelAsProcessDefinition

	self model isProcessDefinition ifTrue: [^model].

	^model definition