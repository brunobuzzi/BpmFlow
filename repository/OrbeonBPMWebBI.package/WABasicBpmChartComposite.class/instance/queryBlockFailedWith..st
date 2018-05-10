other
queryBlockFailedWith: aBpmCodeAnalyzer

	self addSearchValue: ' " ', aBpmCodeAnalyzer printCodeWarnings, ' " ', String lf, (self searchValueAt: 'process-condition')
			named: 'process-condition'