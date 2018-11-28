query variables
getFieldName

	^(self searchValueAt: 'field-name' ifAbsent: [^nil])