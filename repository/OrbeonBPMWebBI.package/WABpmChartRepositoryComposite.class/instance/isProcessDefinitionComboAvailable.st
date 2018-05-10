other
isProcessDefinitionComboAvailable

	^self isProcessReportSelected or: [self isFieldReportSelected or: [self isRecursiveFieldReportSelected]]