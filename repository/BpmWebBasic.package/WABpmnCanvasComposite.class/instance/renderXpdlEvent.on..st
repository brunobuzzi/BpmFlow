render xpdl
renderXpdlEvent: aXPDLEventNode on: html

	aXPDLEventNode isTimerNode ifTrue: [^self renderTimeEvent: aXPDLEventNode on: html].

	aXPDLEventNode isMessageNode ifTrue: [^self renderMessageEvent: aXPDLEventNode on: html].
	
	^self renderEvent: aXPDLEventNode on: html