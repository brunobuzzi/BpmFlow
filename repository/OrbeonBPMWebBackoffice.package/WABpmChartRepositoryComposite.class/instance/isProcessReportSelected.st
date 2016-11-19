other
isProcessReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Process Report' translateFor: self session user)