other
example1
	"
BpmCodeAnalyzer example1
"
	^(super new blockCode: '[:form | MyClass resetAll. form class removeAll]')
		analyze
		codeWarnings.