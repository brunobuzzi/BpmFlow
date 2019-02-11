render basic
renderMessageEvent: anXPDLEventNode on: html
	| center rectCorner |

	center := self getEventCenterFrom: anXPDLEventNode.

	self renderEvent: anXPDLEventNode at: center radius: (anXPDLEventNode getWidth asNumber // 2) stroke: self defaultEventStroke color: '#90a5bd' on: html.

	rectCorner := (center x - 10) @ (center y - 6).
	"render envelope rectangle"

	self renderRectangleOn: html at: rectCorner width: 21 height: 12 stroke: 'black' fillColor: 'darkred'.

	"render envelope line 1"
	self renderLineOn: html from: rectCorner to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.
	"render envelope line 2"
	self renderLineOn: html from: ((rectCorner x + 21) @ (rectCorner y)) to: ((rectCorner x + 11) @ (rectCorner y + 6)) widthPx: 1 stroke: 'black' fillColor: 'black'.