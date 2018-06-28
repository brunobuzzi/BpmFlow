other
isMultiFieldScopeSelected

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Multiple Fields' translateFor: self session user)