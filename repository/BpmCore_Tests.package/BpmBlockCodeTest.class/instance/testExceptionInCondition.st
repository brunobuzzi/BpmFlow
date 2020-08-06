other
testExceptionInCondition
	| process |

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | 9 foo]'.

	process := BpmProcessInstance new.

	bpmBlock evaluateConditionIn: process.

	self assert: process failedEvaluationsSize equals: 1.