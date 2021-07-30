other
doIt
	| application definition instance |

	application := systemRoot applicationNamed: self getApplicationName ifNone: [^self signalNoApplicationException: self getApplicationName].
	definition := application getDefinitionNamed: self getFormName withVersion: version ifNone: [^self signalNoFormException].
	instance := definition 
				getInstanceWithId: id 
				ifNone: [definition getDraftWithId: id ifNone: [OrbeonFormInstance newFor: definition withId: id]].

	"execute the audit options. if <xmlString> is nil --> is a new form"
	(instance xmlString notNil and:[self getOrbeonWebServerConfiguration isInstanceAuditEnableFor: self getFormName in: self getApplicationName]) 
	ifTrue: [self auditStorage addInstanceAudit: instance cloneForAudit].

	instance xmlString: xmlString;
		draft: 'N';
		definition: definition;
		version: version;
		username: user; "BUG - creator set only one time"
		modifiedUser: modifiedUser;
		groupname: group;
		isValid: isValid;
		updateLastModifiedTime.

	(self getOrbeonWebServerConfiguration isDeferredProcessing: self getFormName in: self getApplicationName) 
	ifTrue: [self addDeferredProcessingFor: instance] 
	ifFalse: [instance buildForm].

	definition removeDraft: instance. "this is the final version so we remove the current draft if any"