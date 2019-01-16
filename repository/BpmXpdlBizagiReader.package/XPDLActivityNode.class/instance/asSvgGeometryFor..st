other
asSvgGeometryFor: aSvgCanvas

	^OrderedCollection  new 
		add: ('id' -> UUID new asString);
		add: ('x' -> self getXcoordinate);
		add: ('y' -> self getYcoordinate);
		add: ('rx' -> 5);
		add: ('ry' -> 5);
		add: ('height' -> self getHeight);
		add: ('width' -> self getWidth);
		add: ('stroke-width' -> aSvgCanvas defaultActivityStrokeWidth);
		add: ('stroke' -> (aSvgCanvas defaultActivityStrokeFor: self));
		add: ('fill' -> (aSvgCanvas defaultActivityColorFor: self));
		yourself