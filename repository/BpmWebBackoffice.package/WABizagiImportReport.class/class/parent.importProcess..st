other
parent: aComponent importProcess: aBpmXpdlImportProcess

	^(super parent: aComponent)
		importProcess: aBpmXpdlImportProcess;
		warnings: aBpmXpdlImportProcess importReport;
		yourself