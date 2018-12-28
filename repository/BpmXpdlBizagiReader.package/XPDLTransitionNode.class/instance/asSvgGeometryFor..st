other
asSvgGeometryFor: aSvgCanvas

	^OrderedCollection new 
		add: ('id' -> UUID new asString);
		add: ('d' -> ((aSvgCanvas getConnectionPointsStringFrom: self coordinates)));
		add: ('stroke-width' -> '1.5');
		add: ('stroke' -> aSvgCanvas defaultTransitionStroke);
		add: ('fill' -> 'none');
		add: ('marker-end' -> ('url(#arrow)'));
		yourself