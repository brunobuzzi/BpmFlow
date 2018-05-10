other
isFinishedTaskTypeQuantityDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Finished Tasks by Type' translateFor: self session user)