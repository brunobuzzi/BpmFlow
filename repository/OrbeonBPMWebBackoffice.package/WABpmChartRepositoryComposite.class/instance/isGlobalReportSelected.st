other
isGlobalReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Global Report' translateFor: self session user)