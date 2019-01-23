render basic
renderTimeEvent: aXPDLEventNode tooltip: tooltip color: color on: html
	| center |

	center := self getEventCenterFrom: aXPDLEventNode.

	self renderEvent: aXPDLEventNode at: center radius: (aXPDLEventNode getWidth asNumber // 2) color: color tooltip: tooltip on: html.

	"render internal clock"
	self renderEvent: aXPDLEventNode at: center radius: ((aXPDLEventNode getWidth asNumber // 2) - 5) color: color tooltip: tooltip on: html.
	
	"clock line 1"
	self renderLineOn: html from: center to: ((center x + 9) @ center y) fillColor: 'black'.
	"clock line 2"
	self renderLineOn: html from: center to: (center x @ (center y - 9)) fillColor: 'black'.