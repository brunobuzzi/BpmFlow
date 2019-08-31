other
testLoopCondition
	| activity analyzer |

	activity := self getProcessWorkflow getTaskNodes asArray last.

	analyzer := BpmLoopConditionCodeAnalyzer for: activity loopCondition.

	analyzer analyze.

	self assert: analyzer hasWarinings equals: false