other
getItemsImportReportFor: aXPDLObject

	^self detectedItems select: [:each | each offendingXpdlObject == aXPDLObject]