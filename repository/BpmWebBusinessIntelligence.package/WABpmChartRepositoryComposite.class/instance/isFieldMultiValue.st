testing
isFieldMultiValue

	^(self searchValueAt: 'scope' ifAbsent: [^true]) = ('Field Multi Value' translateIn: self session)