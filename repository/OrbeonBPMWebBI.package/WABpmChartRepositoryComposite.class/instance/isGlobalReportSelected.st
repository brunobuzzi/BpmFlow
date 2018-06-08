other
isGlobalReportSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Global Report' translateFor: self session user)