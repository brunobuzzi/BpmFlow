render xpdl
renderXpdlStartEvent: aXPDLStartNode on: html

	^self renderEvent: aXPDLStartNode 
			at: (self getEventCenterFrom: aXPDLStartNode)
			radius: self defaultEventRadius 
			strokeWidth: self defaultEventStrokeWidth 
			stroke: self defaultEventStroke
			color: self defaultStartEventFillColor
			tooltip: nil 
			on: html