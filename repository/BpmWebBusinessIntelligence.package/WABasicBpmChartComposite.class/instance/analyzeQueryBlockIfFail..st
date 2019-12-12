code analyzer
analyzeQueryBlockIfFail: aOneArgumentBlock	
	| codeAnalyzer |

	codeAnalyzer := self session bpmEnvironment getCodeAnalyzerForQueryBlocks.
	codeAnalyzer blockCode: ((self searchValueAt: 'process-condition') ifNil: [^self] ifNotNil: [:value | value]).

	codeAnalyzer analyze.
	codeAnalyzer hasWarinings ifTrue: [^aOneArgumentBlock value: codeAnalyzer].

	^codeAnalyzer