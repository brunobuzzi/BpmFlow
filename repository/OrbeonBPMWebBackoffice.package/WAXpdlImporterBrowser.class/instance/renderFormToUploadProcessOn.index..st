upload
renderFormToUploadProcessOn: html index: index
	"The receiver render a form to upload a XPDL process with index <index>"

	(index > model indexXpdlFileMapperSize)
	ifTrue: [self renderEmptyUploadFormOn: html index: index]
	ifFalse: [self renderInformationFormOn: html index: index]