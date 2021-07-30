other
doIt
	"This method is called by Orbeon when a Form is autosaved in a Form Instance page"
	| application definition orbeonDraft |

	application := systemRoot applicationNamed: self getApplicationName ifNone: [^self signalNoApplicationException: self getApplicationName].
	definition := application getDefinitionNamed: self getFormName withVersion: version ifNone: [^self signalNoFormException].
	orbeonDraft := definition getDraftWithId: id ifNone: [definition addDraft: (OrbeonFormInstance newFor: definition withId: id)].

	"execute the audit options. if <xmlString> is nil --> is a new form"
	(orbeonDraft xmlString isNil and:[self getOrbeonWebServerConfiguration isDraftAuditEnableFor: self getFormName in: self getApplicationName]) 
	ifTrue: [self auditStorage addDraftAudit: orbeonDraft cloneForAudit].

	orbeonDraft xmlString: xmlString;
		definition: definition;
		draft: 'Y';
		version: version;
		username: user; "BUG - creator set only one time"
		modifiedUser: modifiedUser;
		groupname: group;
		updateLastModifiedTime;
		buildFormSections "create the sections and fields but NOT the FormFieldValues"