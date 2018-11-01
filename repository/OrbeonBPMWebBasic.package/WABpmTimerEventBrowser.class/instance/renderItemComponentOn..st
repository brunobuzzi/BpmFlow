other
renderItemComponentOn: html
	| timer blockSource cleanBlockSource stringToRemove lastExecutionOutput |

	timer := selectedLateralItem isTimerEvent 
		ifFalse: [selectedLateralItem getStartEvent]
		ifTrue: [selectedLateralItem definition].

	blockSource := timer getTimerBlock blockSource.
	stringToRemove := '"This is source for a block.  "'.
	cleanBlockSource := ((blockSource indexOfSubCollection: stringToRemove) = 1)
		ifTrue: [blockSource copyFrom: stringToRemove size + 1 to: blockSource size] 
		ifFalse: [blockSource].


	html div class: 'timer-block-code'; with: [html output: cleanBlockSource].

	lastExecutionOutput := self isTimerTypeCreation 
		ifTrue: [self defaultTimerEventMonitor getLastProcessCreationTimeFor: selectedLateralItem ifNoneExecution: [('none' translateFor: self session user)]] 
		ifFalse: [self defaultTimerEventMonitor getLastEventInstanceExecutionFor: selectedLateralItem ifNoneExecution: [('none' translateFor: self session user)]].

	html div class: 'timer-last-execution'; with: [html output: ('Last Execution' translateFor: self session user)].
	html div class: 'timer-last-execution'; with: [html output: lastExecutionOutput].
	html break.
	html div class: 'timer-last-execution'; with: [html output: ('Current Time' translateFor: self session user)].
	html div class: 'timer-last-execution'; with: [html output: TimeStamp now].