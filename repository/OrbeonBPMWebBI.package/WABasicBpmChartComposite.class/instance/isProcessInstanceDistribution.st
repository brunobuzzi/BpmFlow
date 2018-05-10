query variables
isProcessInstanceDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Process Instances' translateFor: self session user)