other
doIt
	| application definition instance |

	application := self getOrbeonApplicationClass applicationNamed: appName ifNone: [^restHandler signalNoApplicationException: appName].

	definition := application getDefinitionNamed: formName withVersion: version ifNone: [^restHandler signalNoFormException: formName id: id app: appName version: version].

	instance := definition getInstanceWithId: id ifNone: [definition getDraftWithId: id ifNone: [OrbeonFormInstance newFor: definition withId: id]].

	"execute the audit options. if <xmlString> is nil --> is a new form"
	(instance xmlString notNil and:[self apiConfiguration isInstanceAuditEnableFor: formName in: appName]) 
	ifTrue: [self auditStorage addInstanceAudit: instance cloneForAudit].

	instance xmlString: xmlString;
		draft: 'N';
		definition: definition;
		version: version;
		username: username; "BUG - creator set only one time"
		modifiedUser: modifiedUser;
		groupname: groupname;
		isValid: isValid;
		updateLastModifiedTime;
		processXML.

	definition removeDraft: instance. "this is the final version so we remove the current draft if any"

	^instance xmlString.