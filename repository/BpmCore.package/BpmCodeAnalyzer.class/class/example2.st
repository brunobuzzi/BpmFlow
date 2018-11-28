other
example2
	"
BpmCodeAnalyzer example2
"
	^(super new blockCode: '[:form | form age > 10 and:[form amount = 3 or:[form type = ''28'']]. Compiler compile: ''lajdflasj'']')
		analyze
		codeWarnings.