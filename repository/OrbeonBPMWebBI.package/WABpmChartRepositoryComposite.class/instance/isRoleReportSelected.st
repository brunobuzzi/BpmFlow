other
isRoleReportSelected

	^(self searchValueAt: 'report-type' ifAbsent: [^true]) = ('Role Report' translateFor: self session user)