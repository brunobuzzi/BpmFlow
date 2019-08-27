other
testExtendedAttributeCanUnassign
	| procDef task |

	procDef := processGenerator getProcessDefinitionNamed: 'timer-process' ifNone: [self assert: false].

	task := procDef getAllArtifacts detect: [:each | each name = 'form_task1'] ifNone: [self assert: false].

	self assert: task canUnassign not.