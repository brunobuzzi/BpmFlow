other
doIt
	"This method is called by Orbeon when a user click 'Duplicate' in a Form Instance in the Form Runner"
	| orbeonInstance application instanceDefinition |

	application := systemRoot applicationNamed: self getApplicationName ifNone: [^self signalNoApplicationException: self getApplicationName].

	instanceDefinition := application getDefinitionNamed: self getFormName withVersion: version ifNone: [^self signalNoFormException].

	orbeonInstance := OrbeonFormInstance new.

	orbeonInstance xmlString: xmlString;
		id: id;
		definition: instanceDefinition;
		version: version;
		updateLastModifiedTime.

	(self getOrbeonWebServerConfiguration isDeferredProcessing: self getFormName in: self getApplicationName) 
	ifTrue: [self addDeferredProcessingFor: orbeonInstance] 
	ifFalse: [orbeonInstance buildForm].