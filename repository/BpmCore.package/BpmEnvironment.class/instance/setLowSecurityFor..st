embedded code security
setLowSecurityFor: codeAnalyzerClass
	"The receiver set no restrictions for embedded code analyzer class <codeAnalyzerClass>"

	^embeddedCodeSecurityPolicy at: codeAnalyzerClass put: #newWithLowSecurity