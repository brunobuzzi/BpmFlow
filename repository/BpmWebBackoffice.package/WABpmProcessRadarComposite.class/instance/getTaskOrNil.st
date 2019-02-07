other
getTaskOrNil
	"The receiver answer the current selected task (orbeon form definition or st model) or nil"

	^self getProcessDefinitionOrNil
		ifNil: [nil]
		ifNotNil: [:procDefinition | procDefinition getTaskNamed: self getSelectedFormDefinition ifNone: [nil]]