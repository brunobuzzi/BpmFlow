other
testMultiRoleAndInformedCreation
	| processDefinition taskDefinition |

	processDefinition := processGenerator getProcessDefinitionNamed: 'multi-role' ifNone: [self assert: false].

	taskDefinition := processDefinition getTaskNamed: 'data-entry' ifNone: [self assert: false].

	self assert: ((taskDefinition extendedValueOf: 'BizagiInformed') = 'data-entry-manager').

	self assert: (taskDefinition onCreationIsInformed: (self defaultFrontOfficeRoleClass createNewOrGetExisting: 'data-entry-manager' in: 'ue')).
	self assert: (taskDefinition onModificationIsInformed: (self defaultFrontOfficeRoleClass createNewOrGetExisting: 'data-entry-manager' in: 'ue')).
	self assert: (taskDefinition onFinalizationIsInformed: (self defaultFrontOfficeRoleClass createNewOrGetExisting: 'data-entry-manager' in: 'ue')).