other
isFieldReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^false]) = ('Field Report' translateFor: self session user)