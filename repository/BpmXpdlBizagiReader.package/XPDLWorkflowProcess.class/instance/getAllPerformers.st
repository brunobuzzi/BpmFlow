other
getAllPerformers

	self isEmbedded ifTrue: [^parentWorkflow getAllPerformers]. "go to the parent workflow because is an embbeded process"

	^parentPool performers