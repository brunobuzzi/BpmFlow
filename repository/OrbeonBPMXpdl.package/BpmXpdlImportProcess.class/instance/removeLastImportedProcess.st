import
removeLastImportedProcess

	indexApplicationMapper removeKey: self getNumberOfProcesses ifAbsent: [].
	indexXpdlFileMapper removeKey: self getNumberOfProcesses ifAbsent: [].