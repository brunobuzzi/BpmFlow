upload
renderUploadComponentOn: html index: index

	((index ~= 1) and: [(model xpdlFileMapperIncludesKey: index - 1) not]) ifTrue: [^self]. "the previous file was NOT uploaded"

	(model xpdlFileMapperIncludesKey: index)
	ifFalse: [
		html label attributeAt: 'for' put: ('selectFile-', index printString); with: ('Select File' translateIn: self session).
		html fileUpload attributeAt: 'id' put: ('selectFile-', index printString); 
			callback: [:aFile | model storeTemporaryXpdlFile: aFile atIndex: index]. "the user upload the XPDL file"
		html submitButton: ('Send File [' translateIn: self session), index printString, ']']
	ifTrue:[html strong with: [html paragraph with: (model getMappedXpdlFileNameAt: index)].
			(model fileFormatIncludesKey: (model getMappedXpdlFileNameAt: index)) "file format error"
			ifTrue: [html paragraph class: 'error-text';
				with: (model fileFormatErrorAt: (model getMappedXpdlFileNameAt: index))].
	].