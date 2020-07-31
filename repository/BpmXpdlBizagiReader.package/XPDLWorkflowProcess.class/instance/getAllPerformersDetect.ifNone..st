other
getAllPerformersDetect: aBlock ifNone: errorHandler

	self isEmbedded ifTrue: [^parentWorkflow getAllPerformersDetect: aBlock ifNone: errorHandler]. "go to the parent workflow because is an embbeded process"

	^parentPool performersDetect: aBlock ifNone: errorHandler