other
printEvaluationCode

	evaluationCode ifNil: [^'none'].

	evaluationCode isBlock ifTrue: [^evaluationCode blockSource]. 
	
	^evaluationCode