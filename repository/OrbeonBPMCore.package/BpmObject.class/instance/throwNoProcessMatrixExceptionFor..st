exceptions
throwNoProcessMatrixExceptionFor: processName

	^NoProcessMatrixException signal: 'No Matrix has been created for process named [', processName, ']'