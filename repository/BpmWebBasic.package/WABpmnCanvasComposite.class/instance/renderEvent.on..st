render basic
renderEvent: aXPDLEventNode on: html

	^self renderEvent: aXPDLEventNode 
			at: (self getEventCenterFrom: aXPDLEventNode)
			radius: self defaultEventRadius 
			strokeWidth: self defaultEventStrokeWidth 
			stroke: self defaultEventStroke
			color: self defaultEventFillColor
			tooltip: nil 
			on: html