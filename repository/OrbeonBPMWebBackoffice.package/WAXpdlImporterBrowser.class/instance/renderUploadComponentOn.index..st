upload
renderUploadComponentOn: html index: index

	((index ~= 1) and: [(selectedUploads includesKey: index - 1) not]) ifTrue: [^self]. "the previous file was NOT uploaded"

	(selectedUploads includesKey: index)
	ifFalse: [
		html label attributeAt: 'for' put: 'selectFile'; with: ('Select File' translateFor: self session user).
		html fileUpload attributeAt: 'id' put: 'selectFile'; 
			callback: [ :value | self receiveFile: value index: index]. "the user upload the XPDL file"
		html submitButton: ('Send File [' translateFor: self session user), index printString, ']']
	ifTrue:[html strong with: [html paragraph with: (selectedUploads at: index)].
			(fileFormats includesKey: (selectedUploads at: index)) "file format error"
			ifTrue: [html paragraph class: 'error-text';
				with: (fileFormats at: (selectedUploads at: index))].
			invalidFormatError notNil ifTrue: [html paragraph class: 'error-text'; with: invalidFormatError].
	].