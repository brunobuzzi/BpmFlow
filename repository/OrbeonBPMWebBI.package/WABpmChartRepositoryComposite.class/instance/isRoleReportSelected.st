other
isRoleReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Role' translateFor: self session user)