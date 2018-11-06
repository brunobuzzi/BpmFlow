import
removeLastImportedProcess

	indexApplicationMapper removeKey: self getNumberOfProcesses ifAbsent: [].
	indexXpdlFileMapper removeKey: self getNumberOfProcesses ifAbsent: [].

	"no available xpdf files to import --> remove possible previous import errors"
	(self indexXpdlFileMapperSize = 0) 
	ifTrue: [fileFormatErrors := Dictionary new.
				processGenerator := nil].