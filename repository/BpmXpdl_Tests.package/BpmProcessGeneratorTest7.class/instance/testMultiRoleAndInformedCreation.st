other
testMultiRoleAndInformedCreation
	| processDefinition taskDefinition |

	processDefinition := processGenerator getProcessDefinitionNamed: 'multi-role' ifNone: [self assert: false].

	taskDefinition := processDefinition getTaskNamed: 'data-entry' ifNone: [self assert: false].

	self assert: ((taskDefinition extendedValueOf: 'BizagiInformed') = 'data-entry-manager').

	self assert: (taskDefinition onCreationIsInformed: (BpmFrontOfficeRole createNewOrGetExisting: 'data-entry-manager' in: 'ue')).
	self assert: (taskDefinition onModificationIsInformed: (BpmFrontOfficeRole createNewOrGetExisting: 'data-entry-manager' in: 'ue')).
	self assert: (taskDefinition onFinalizationIsInformed: (BpmFrontOfficeRole createNewOrGetExisting: 'data-entry-manager' in: 'ue')).