testing
isMultiFieldScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Multiple Fields' translateIn: self session)