embedded code security
setHighSecurityForAll

	self allCodeAnalyzers do: [:analyzerClass | self setHighSecurityFor: analyzerClass]