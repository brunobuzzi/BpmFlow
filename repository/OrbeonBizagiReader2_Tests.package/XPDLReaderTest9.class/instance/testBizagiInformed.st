tests
testBizagiInformed
	| task |

	task := self getMainWorkflow getActivityNamed: 'data-entry'.

	self assert: ((task extendedValueOf: 'BizagiInformed') = 'data-entry-manager')