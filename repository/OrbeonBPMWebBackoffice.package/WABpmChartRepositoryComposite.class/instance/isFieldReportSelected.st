other
isFieldReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Field Report' translateFor: self session user)