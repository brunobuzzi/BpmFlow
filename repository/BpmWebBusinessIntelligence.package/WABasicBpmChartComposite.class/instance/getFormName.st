query variables
getFormName

	^self searchValueAt: 'form-name' ifAbsent: [^nil]