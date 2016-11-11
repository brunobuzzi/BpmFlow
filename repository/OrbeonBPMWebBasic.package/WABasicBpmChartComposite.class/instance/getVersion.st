query variables
getVersion

	^(self searchValueAt: 'version' ifAbsent: [^nil]) ifNotNil: [:value | (value = 'All') ifTrue: [nil] ifFalse: [value]]