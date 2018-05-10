query variables
isProcessesAverageTimeDistribution

	^(self searchValueAt: 'distribution' ifAbsent: [nil]) = ('Processes Average Time' translateFor: self session user)