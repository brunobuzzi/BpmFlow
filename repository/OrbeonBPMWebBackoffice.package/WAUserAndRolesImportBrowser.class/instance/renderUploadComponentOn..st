other
renderUploadComponentOn: html

	html label attributeAt: 'for' put: 'selectFile'; with: ('Select CSV File' translateFor: self session user).
	html fileUpload attributeAt: 'id' put: 'selectFile'; 
		callback: [ :value | self receiveFile: value]. "the user upload the CSV file"
	html submitButton: '1. View File'