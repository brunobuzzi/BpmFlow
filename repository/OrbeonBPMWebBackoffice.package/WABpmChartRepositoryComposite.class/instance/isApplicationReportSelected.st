other
isApplicationReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Application Report' translateFor: self session user)