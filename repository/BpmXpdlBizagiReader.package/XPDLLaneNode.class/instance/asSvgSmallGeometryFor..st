other
asSvgSmallGeometryFor: aSvgCanvas

	^OrderedCollection  new 
		add: ('id' -> UUID new asString);
		add: ('x' -> (self getXcoordinate - 50));
		add: ('y' -> self getYcoordinate);
		add: ('height' -> self getHeight);
		add: ('width' -> 50);
		add: ('stroke-width' -> aSvgCanvas defaultActivityStrokeWidth);
		add: ('stroke' -> aSvgCanvas defaultLaneStroke);
		add: ('fill' -> aSvgCanvas defaultLaneColor);
		yourself