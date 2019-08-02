other
testProcessTriggerErrorEventCode_9
	| currentTask endArtifact formInstance |

	self assert: (procInstance startEvent getDefinitionName = 'start').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	formInstance := self formInstance_withValues: self generateRandomValues in: procInstance.
	formInstance createdTime: TimeStamp now;
		modifiedTime:TimeStamp now.

	currentTask triggerAttachedEventNamed: 'error-event' withProperties: (Dictionary newFromPairs: {'errorCode' . 1})