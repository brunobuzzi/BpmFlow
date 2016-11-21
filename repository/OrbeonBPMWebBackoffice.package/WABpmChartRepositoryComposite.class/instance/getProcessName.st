other
getProcessName

	^self searchValueAt: 'process-name' ifAbsent: [nil]