*bpmruntimepef
createFormInstance: xmlMethodName withValues: anArray definitionNamed: definitionName app: app definitionMethod: definitionMethod in: aBpmProcessInstance
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| formInstance |

	formInstance := self createFormInstance: xmlMethodName withValues: anArray definitionNamed: definitionName app: app definitionMethod: definitionMethod.

	aBpmProcessInstance definition updateFieldsOf: formInstance. "create AppFieldValue for the process definition"

	^formInstance