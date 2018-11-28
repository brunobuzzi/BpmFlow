mapping
getMappedApplicationNameAt: index

	^indexApplicationMapper at: index ifAbsent: [nil]