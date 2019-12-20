embedded code security
getCodeAnalyzerFor: codeAnalyzerClass
	"The receiver answer an instance of <codeAnalyzerClass> with the configured security setup"
	| securitySelector |

	securitySelector := embeddedCodeSecurityPolicy at: codeAnalyzerClass.

	^codeAnalyzerClass perform: securitySelector