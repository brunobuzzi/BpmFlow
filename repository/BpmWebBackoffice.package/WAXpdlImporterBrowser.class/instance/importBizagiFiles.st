import
importBizagiFiles

	[model importBizagiFiles] on: XpdlFileFormatException do: [:each | ^self].

	model hasWarnings ifFalse: [^self].

	self show: (WABizagiImportReport parent: self importProcess: model)