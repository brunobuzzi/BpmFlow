embedded code security
setMediumSecurityForAll

	self allCodeAnalyzers do: [:analyzerClass | self setMediumSecurityFor: analyzerClass]