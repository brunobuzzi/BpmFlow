other
asSvgGeometryFor: aSvgCanvas

	self viewIsExpanded ifFalse: [^super asSvgGeometryFor: aSvgCanvas].

	"issue #960"
	^OrderedCollection  new 
		add: ('id' -> UUID new asString);
		add: ('x' -> self getXcoordinate);
		add: ('y' -> self getYcoordinate);
		add: ('rx' -> 5);
		add: ('ry' -> 5);
		add: ('height' ->180);
		add: ('width' -> 120);
		add: ('stroke-width' -> aSvgCanvas defaultActivityStrokeWidth);
		add: ('stroke' -> (aSvgCanvas defaultActivityStrokeFor: self));
		add: ('fill' -> (aSvgCanvas defaultActivityColorFor: self));
		yourself