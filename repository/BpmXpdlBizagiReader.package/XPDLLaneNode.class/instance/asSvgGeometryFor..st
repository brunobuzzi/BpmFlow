other
asSvgGeometryFor: aSvgCanvas

	^OrderedCollection  new 
		add: ('id' -> UUID new asString);
		add: ('x' -> self getXcoordinate);
		add: ('y' -> self getYcoordinate);
		add: ('height' -> self getHeight);
		add: ('width' -> self getWidth);
		add: ('stroke-width' -> aSvgCanvas defaultActivityStrokeWidth);
		add: ('stroke' -> aSvgCanvas defaultLaneStroke);
		add: ('fill' -> aSvgCanvas defaultLaneColor);
		yourself