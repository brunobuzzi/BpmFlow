other
renderUploadComponentOn: html

	html label attributeAt: 'for' put: 'selectFile'; with: ('Select CSV File' translateIn: self session).
	html fileUpload attributeAt: 'id' put: 'selectFile'; 
		callback: [ :value | self receiveFile: value]. "the user upload the CSV file"
	html submitButton: '1. View File'