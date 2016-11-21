other
isUserReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^false]) = ('User Report' translateFor: self session user)