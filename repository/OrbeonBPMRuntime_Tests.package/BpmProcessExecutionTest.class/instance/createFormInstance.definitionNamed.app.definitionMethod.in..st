forms creation
createFormInstance: xmlMethodName definitionNamed: definitionName app: app definitionMethod: definitionMethod in: aBpmProcessInstance
	"The receiver create anOrbeonFormInstance of form definition named <definitionName> of Orbeon Applicaiton named <app> using the method <xmlMethodName> to get the XML string of the form "

	^self createFormInstance: xmlMethodName withValues: #() definitionNamed: definitionName app: app definitionMethod: definitionMethod in: aBpmProcessInstance