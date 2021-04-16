*bpmruntimepef
buildFormInstanceFrom: xmlInstanceString definitionNamed: definitionName app: app definitionMethod: xmlDefinitionString in: aBpmProcessInstance
	"The receiver create anOrbeonFormInstance of form definition named <definitionName> of Orbeon Applicaiton named <app> using the method <xmlMethodName> to get the XML string of the form "

	^self buildFormInstanceFrom: xmlInstanceString withValues: #() definitionNamed: definitionName app: app definitionMethod: xmlDefinitionString in: aBpmProcessInstance