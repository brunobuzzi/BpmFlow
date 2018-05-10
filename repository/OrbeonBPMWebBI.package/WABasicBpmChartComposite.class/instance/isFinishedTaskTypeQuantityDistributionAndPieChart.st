query variables
isFinishedTaskTypeQuantityDistributionAndPieChart

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Finished Tasks by Type' translateFor: self session user) and: [self isPieChart]