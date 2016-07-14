execution simulation
createFormInstance: xmlMethodName definitionNamed: definitionName app: app
	"The receiver create anOrbeonFormInstance of form definition named <definitionName> of Orbeon Applicaiton named <app> using the method <xmlMethodName> to get the XML string of the form "
	| application definition formInstance |

	application := self getApplicationManagerClass getAnyApplicationNamed: app.
	definition := application definitionNamed: definitionName.

	formInstance := 
		(OrbeonFormInstance newFor: definition withId: UUID new asString)
			definition: definition;
			xmlString: (OrbeonFormInstanceTemplate perform: xmlMethodName);
			processXML;
			yourself.

	procInstance definition updateFieldsOf: formInstance. "create AppFieldValue for the process definition"

	^formInstance