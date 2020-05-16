embedded code security
setSecurityLevelTo: securitySymbol for: codeAnalyzerClass
	"The receiver set code analyzer class <codeAnalyzerClass> with security level named <securitySymbol>"

	(securitySymbol = #high) ifTrue: [^self setHighSecurityFor: codeAnalyzerClass].

	(securitySymbol = #medium) ifTrue: [^self setMediumSecurityFor: codeAnalyzerClass].

	(securitySymbol = #low) ifTrue: [^self setLowSecurityFor: codeAnalyzerClass].