query variables
isProcessDefinitionDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Process Definition' translateFor: self session user)