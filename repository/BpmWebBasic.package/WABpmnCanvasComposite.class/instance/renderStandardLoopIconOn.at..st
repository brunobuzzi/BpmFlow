render basic
renderStandardLoopIconOn: html at: aPoint
	| associations |

	associations := OrderedCollection new.
	associations 
		add: ('id' -> UUID new asString);
		add: ('cx' -> aPoint x);
		add: ('cy' -> aPoint y);
		add: ('r' -> 8);
		add: ('stroke' -> 'black');
		add: ('stroke-width' -> '2px');
		add: ('fill' -> 'none').

	self renderSvgElementOn: html tag: html svgCircle attributes: associations with: [html tag: 'title' with: nil].

	self renderLineOn: html from: ((aPoint x + 2) @ (aPoint y + 8)) to: ((aPoint x - 3) @ (aPoint y + 2)) widthPx: '2px' stroke: 'black' fillColor: 'black'.
	self renderLineOn: html from: ((aPoint x + 2) @ (aPoint y + 8)) to: ((aPoint x - 3) @ (aPoint y + 12)) widthPx: '2px' stroke: 'black' fillColor: 'black'.