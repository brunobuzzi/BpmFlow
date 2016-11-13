other
analyzeQueryBlockIfFail: aOneArgumentBlock	
	| codeAnalyzer |

	codeAnalyzer := BpmProcessConditionCodeAnalyzer for: ((self searchValueAt: 'process-condition') ifNil: [^self] ifNotNil: [:value | value]).

	codeAnalyzer analyze.
	codeAnalyzer hasWarinings ifTrue: [^aOneArgumentBlock value: codeAnalyzer].

	^codeAnalyzer