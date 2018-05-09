query variables
isPieChart

	^(self searchValueAt: 'chart-type' ifAbsent: [nil]) = ('Pie Chart' translateFor: self session user)