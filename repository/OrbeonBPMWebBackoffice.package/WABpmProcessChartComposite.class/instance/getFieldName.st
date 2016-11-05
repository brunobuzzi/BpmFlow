query variables
getFieldName

	^(self searchValueAt: 'field-name' ifAbsent: [^nil]), '[s]'  "FIX THIS - FIELD NAMES INCLUDES THE TYPE"