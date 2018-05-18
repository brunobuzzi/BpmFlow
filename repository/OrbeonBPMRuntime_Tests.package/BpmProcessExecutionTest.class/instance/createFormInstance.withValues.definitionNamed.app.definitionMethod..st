forms creation
createFormInstance: xmlMethodName withValues: andArray definitionNamed: definitionName app: app definitionMethod: definitionMethod
	"The receiver create anOrbeonFormInstance of form definition named <definitionName> of Orbeon Applicaiton named <app> using the method <xmlMethodName> to get the XML string of the form "

	^self createFormInstance: xmlMethodName withValues: andArray definitionNamed: definitionName app: app definitionMethod: definitionMethod in: procInstance