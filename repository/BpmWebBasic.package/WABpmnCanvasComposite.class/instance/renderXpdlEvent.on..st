render xpdl
renderXpdlEvent: aXPDLEventNode on: html

	aXPDLEventNode isEndNode ifTrue: [^self renderXpdlEndEvent: aXPDLEventNode on: html].
	aXPDLEventNode isStartNode ifTrue: [^self renderXpdlStartEvent: aXPDLEventNode on: html].

	aXPDLEventNode isTimerNode ifTrue: [^self renderTimeEvent: aXPDLEventNode tooltip: aXPDLEventNode getTooltipOrNil on: html].

	aXPDLEventNode isMessageNode ifTrue: [^self renderMessageEvent: aXPDLEventNode on: html].
	
	^self renderEvent: aXPDLEventNode on: html