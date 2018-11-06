mapping
getMappedXpdlFileNameAt: index

	^indexXpdlFileMapper at: index ifAbsent: [nil]