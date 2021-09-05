other
testExtendedAttributeCanUnassign
	| procDef task |

	procDef := testRoot getLatestProcessDefinitionNamed: 'timer-process' in: self defaultApplicationName.

	task := procDef getAllArtifacts detect: [:each | each name = 'form_task1'] ifNone: [self assert: false].

	self assert: task canUnassign not.