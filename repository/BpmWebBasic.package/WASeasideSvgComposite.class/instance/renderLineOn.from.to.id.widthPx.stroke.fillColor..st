line
renderLineOn: html from: originPoint to: finalPoint id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> id);
		add: ('x1' -> originPoint x);
		add: ('y1' -> originPoint y);
		add: ('x2' -> finalPoint x);
		add: ('y2' -> finalPoint y);
		add: ('fill' -> fillColor);
		add: ('stroke' -> stroke);
		add: ('stroke-width' -> widthPx).

	^self renderSvgElementOn: html tag: html svgLine attributes: associations with: []