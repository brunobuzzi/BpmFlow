render xpdl
renderXpdlEndEvent: aXPDLEndNode on: html

	self renderEvent: aXPDLEndNode 
			at: (self getEventCenterFrom: aXPDLEndNode)
			radius: self defaultEventRadius 
			strokeWidth: self defaultEventStrokeWidth 
			stroke: self defaultEventStroke
			color: self defaultEndEventFillColor
			tooltip: nil 
			on: html