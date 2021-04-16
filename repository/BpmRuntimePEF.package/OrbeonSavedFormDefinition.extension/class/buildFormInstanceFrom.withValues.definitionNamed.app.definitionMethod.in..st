*bpmruntimepef
buildFormInstanceFrom: xmlInstanceString withValues: anArray definitionNamed: definitionName app: app definitionMethod: xmlDefinitionString in: aBpmProcessInstance
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| formInstance |

	formInstance := self buildFormInstanceFrom: xmlInstanceString withValues: anArray definitionNamed: definitionName app: app definitionMethod: xmlDefinitionString.

	aBpmProcessInstance definition updateFieldsOf: formInstance. "create AppFieldValue for the process definition"

	^formInstance