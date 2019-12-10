embedded code security
setMediumSecurityFor: codeAnalyzerClass
	"The receiver set Classes restrictions for embedded code analyzer class <codeAnalyzerClass>"

	^embeddedCodeSecurityPolicy at: codeAnalyzerClass put: codeAnalyzerClass newWithMediumSecurity