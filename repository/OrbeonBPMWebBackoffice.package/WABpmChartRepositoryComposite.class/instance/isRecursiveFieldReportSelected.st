other
isRecursiveFieldReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^false]) = ('Recursive Field Report' translateFor: self session user)