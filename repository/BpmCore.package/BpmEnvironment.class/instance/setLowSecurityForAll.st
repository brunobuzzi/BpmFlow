embedded code security
setLowSecurityForAll

	self allCodeAnalyzers do: [:analyzerClass | self setLowSecurityFor: analyzerClass]