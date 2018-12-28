other
asSvgIconGeometryFor: aSvgCanvas

	^OrderedCollection  new 
		add: ('id' -> UUID new asString);
		add: ('x' -> (self getXcoordinate + self getWidth -15));
		add: ('y' -> (self getYcoordinate + 5));
		add: ('rx' -> 5);
		add: ('ry' -> 5);
		add: ('height' -> 15);
		add: ('width' -> 10);
		add: ('stroke-width' -> '1.5');
		add: ('stroke' -> 'black');
		add: ('fill' -> 'none');
		yourself