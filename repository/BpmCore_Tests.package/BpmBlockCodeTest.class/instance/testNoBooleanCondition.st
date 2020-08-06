other
testNoBooleanCondition
	| process |

	bpmBlock := BpmBlockCode newFromBlock: '[:proc | 9 negated]'.

	process := BpmProcessInstance new.

	bpmBlock evaluateConditionIn: process.

	self assert: process failedEvaluationsSize equals: 1.