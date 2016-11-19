other
isUserReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('User Report' translateFor: self session user)