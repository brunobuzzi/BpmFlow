other
isCurrentTaskTypeQuantityDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Current Tasks by Type' translateFor: self session user)