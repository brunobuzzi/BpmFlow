service-get
sendFileForCustomPDF: formName app: app fileId: fileId 
	"This service is called when Orbeon requires a Custom PDF of a form or the Form Instance has any attachments and the user has clicked -Send-"

	<get>
	<produces: 'application/octet-stream'>
	<path: '/crud/{2}/{1}/form/{3}'>
	| apiOperation |
	apiOperation := OrbeonSendCustomPdfFileApi newOn: self systemRoot.
	apiOperation
		fileId: fileId;
		appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request 
					headerAt: 'orbeon-credentials').
	self requestContext response 
		contentType: WAMimeType applicationOctetStream.
	^apiOperation doIt