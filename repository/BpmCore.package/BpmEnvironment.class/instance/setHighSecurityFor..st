embedded code security
setHighSecurityFor: codeAnalyzerClass
	"The receiver set Classes and Methods restrictions for embedded code analyzer class <codeAnalyzerClass>"

	^embeddedCodeSecurityPolicy at: codeAnalyzerClass put: #newWithHighSecurity