other
getMarkerNamed: aString

	^svgMarkers at: aString ifAbsent: [nil]