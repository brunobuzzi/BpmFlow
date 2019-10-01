render xpdl
renderXpdlStartEvent: aXPDLStartNode on: html

	self renderEvent: aXPDLStartNode 
			at: (self getEventCenterFrom: aXPDLStartNode)
			radius: self defaultEventRadius 
			strokeWidth: self defaultEventStrokeWidth 
			stroke: self defaultEventStroke
			color: self defaultStartEventFillColor
			tooltip: nil 
			on: html.

	aXPDLStartNode isTimerNode ifFalse: [^self].

	self renderTimeEvent: aXPDLStartNode tooltip: aXPDLStartNode getTooltipOrNil color: self defaultStartEventFillColor on: html.

	self renderImportErrorOn: html for: aXPDLStartNode