search area
getSelectedTaskOrNil
	"The receiver answer the current selected task (orbeon form definition or st model) or nil"

	^self getSelectedProcessDefinitionOrNil
		ifNil: [nil]
		ifNotNil: [:procDefinition | procDefinition getTaskNamed: (self searchValueAt: 'form-type' ifAbsent: ['']) ifNone: [nil]]