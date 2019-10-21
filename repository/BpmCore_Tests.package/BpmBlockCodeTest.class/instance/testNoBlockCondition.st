other
testNoBlockCondition
	| process |

	bpmBlock := BpmBlockCode newFromBlock: '9 negated'.

	process := BpmProcessInstance new.

	bpmBlock evaluateConditionIn: process.

	self assert: process failedEvaluations size equals: 1.