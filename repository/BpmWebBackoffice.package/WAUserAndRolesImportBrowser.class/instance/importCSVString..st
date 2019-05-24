upload
importCSVString: csvString
	"The receiver separate the contents of <csvString> by String lf.  
	And each line is put as aString in <fileRows> variable.
	key: 1 value: first line, key: n value: line n
	Each line is separated by ';' "

	importer csvString: csvString.
	[importer generateConfigurationElements] on: InvalidCsvFormatException do: [:ex | ^self sewafTableForImportedData information: 'Wrong File Format' color: 'red'].

	self sewafTableForImportedData information: 'File Processed' color: 'green'.

	importedConfigurationBatchList items: OrderedCollection new