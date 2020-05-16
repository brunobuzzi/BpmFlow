embedded code security
embeddedCodeSecurityLevelFor: codeAnalyzerClass
	"Answer <aSymbol> with the current security level for code analyzer <codeAnalyzerClass>.
	Values: #low, #medium and #high"

	^(self getCodeAnalyzerFor: codeAnalyzerClass) securityLevel