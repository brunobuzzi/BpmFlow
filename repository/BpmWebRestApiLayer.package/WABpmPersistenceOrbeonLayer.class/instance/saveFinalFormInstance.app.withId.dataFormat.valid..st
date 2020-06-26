service-put
saveFinalFormInstance: formName app: app withId: id dataFormat: dataFormatVersion valid: aBoolean
	"This method is called by Orbeon when a user click 'Send' in a Form Instance page"
	| apiOperation version |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml?data-format-version={4}&valid={5}'>

	version := ([Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version')] on: Error do: [:ex | nil]) ifNil: [1] ifNotNil: [:value | value].

	apiOperation := BpmOrbeonFormSaveFinalApi newWithXml: (self requestContext request bodyDecodeUsing: 'utf-8') id: id.
	apiOperation appName: app;
		formName: formName;
		isValid: aBoolean;
		version: version;
		username:  (self requestContext request headerAt: 'orbeon-username'); "BUG - creator set only one time"
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		groupname: (self requestContext request headerAt: 'orbeon-group').

	^apiOperation doIt