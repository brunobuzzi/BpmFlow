service-put
saveFinalFormInstance: formName app: app withId: id dataFormat: dataFormatVersion valid: aBoolean
	"This method is called by Orbeon when a user click 'Send' in a Form Instance page"
	| application definition instance version |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/{2}/{1}/data/{3}/data.xml?data-format-version={4}&valid={5}'>

	application := self getOrbeonApplicationClass applicationNamed: app ifNone: [^self signalNoApplicationException: app].
	version := Number fromString: (self requestContext request headerAt: 'orbeon-form-definition-version').
	definition := application getDefinitionNamed: formName withVersion: version ifNone: [^self signalNoFormException: formName id: id app: app version: version].
	instance := definition 
				getInstanceWithId: id 
				ifNone: [definition getDraftWithId: id ifNone: [OrbeonFormInstance newFor: definition withId: id]].

	"execute the audit options. if <xmlString> is nil --> is a new form"
	(instance xmlString notNil and:[self apiConfiguration isInstanceAuditEnableFor: formName in: app]) 
	ifTrue: [self auditStorage addInstanceAudit: instance cloneForAudit].

	instance xmlString: self requestContext request rawBody;
		draft: 'N';
		definition: definition;
		version: version;
		username:  (self requestContext request headerAt: 'orbeon-username'); "BUG - creator set only one time"
		modifiedUser: (self requestContext request headerAt: 'orbeon-username');
		groupname: (self requestContext request headerAt: 'orbeon-group');
		isValid: aBoolean;
		updateLastModifiedTime;
		processXML.

	definition removeDraft: instance. "this is the final version so we remove the current draft if any"

	^instance xmlString