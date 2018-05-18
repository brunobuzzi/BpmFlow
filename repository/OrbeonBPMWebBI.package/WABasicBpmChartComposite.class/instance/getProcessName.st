query variables
getProcessName

	^self searchValueAt: 'process-name' ifAbsent: [nil]