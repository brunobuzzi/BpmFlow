other
isRecursiveFieldReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Recursive Field Report' translateFor: self session user)