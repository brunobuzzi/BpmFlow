other
testLoop
	| taskNames processDefinition |

	taskNames := #('dashboard-form').
	processDefinition := self getProcessWithLoop.

	self assert: (processDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop isStandard equals: true.
	self assert: (processDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop loopMaximum equals: 6.
	self assert: (processDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop testTimeIsBefore equals: true.
	self assert: (processDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop testTimeIsAfter equals: false.
	self assert: (processDefinition getTaskNamed: 'dashboard-form' ifNone: [self assert: false]) loop loopCondition class equals: BpmBlockCode.