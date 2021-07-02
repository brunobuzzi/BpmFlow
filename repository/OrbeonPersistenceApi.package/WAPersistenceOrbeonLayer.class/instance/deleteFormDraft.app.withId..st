service-delete
deleteFormDraft: formName app: app withId: id
	"This method is called by Orbeon when a user click 'Delete' in a Form Instance Draft in the Form Runner page"
	| apiOperation |
	<delete>
	<path: '/crud/{2}/{1}/draft/{3}/data.xml'>

	apiOperation := OrbeonFormDraftDeleteApi newOn: self systemRoot withId: id.
	apiOperation appName: app;
		formName: formName;
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials').

	apiOperation doIt.

	^apiOperation