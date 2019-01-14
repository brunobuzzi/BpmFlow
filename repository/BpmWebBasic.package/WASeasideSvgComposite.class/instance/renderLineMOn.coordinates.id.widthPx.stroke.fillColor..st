line m
renderLineMOn: html coordinates: coordinates id: id widthPx: widthPx stroke: stroke fillColor: fillColor 
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> id);
		add: ('d' -> (self getConnectionPointsStringFrom: coordinates));
		add: ('fill' -> fillColor);
		add: ('stroke' -> stroke);
		add: ('stroke-width' -> widthPx).

	^self renderSvgElementOn: html tag: html svgPath attributes: associations with: []