testing
isImportSuccessful

	processGenerator ifNil: [^false].

	^processGenerator successfulImport