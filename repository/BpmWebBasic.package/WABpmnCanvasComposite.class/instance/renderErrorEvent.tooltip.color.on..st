render basic
renderErrorEvent: aXPDLEventNode tooltip: tooltip color: color on: html
	| center innerIconAttributes iconCenter |

	center := self getEventCenterFrom: aXPDLEventNode.

	self renderEvent: aXPDLEventNode at: center radius: (aXPDLEventNode getWidth asNumber // 2) color: color tooltip: tooltip on: html.

	"render internal clock"
	self renderEvent: aXPDLEventNode at: center radius: ((aXPDLEventNode getWidth asNumber // 2) - 3) color: color tooltip: tooltip on: html.
	
	"self renderTextOn: html text: 'N' at: (center x - 4) @ (center y + 5) textSizePx: '12px'."
	iconCenter := (center x -10) @ (center y -15).

	innerIconAttributes := OrderedCollection new.
	innerIconAttributes 
		add: ('id' -> UUID new asString);
		add: ('x' -> center x);
		add: ('y' -> center y);
		add: ('font-size' -> '12px');
		add: ('font-weight' -> 'bold');
		add: ('transform' -> ('rotate(20 ', iconCenter x printString, ' ', iconCenter y printString, ')'));
		add: ('fill' -> 'black');
		add: ('font-family' -> 'Tahoma').


	self renderSvgElementOn: html 
			tag: html svgText 
			attributes: innerIconAttributes 
			with: 'N'