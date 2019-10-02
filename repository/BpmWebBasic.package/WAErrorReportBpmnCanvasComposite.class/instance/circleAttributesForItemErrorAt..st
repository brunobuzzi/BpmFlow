other
circleAttributesForItemErrorAt: aPoint
	| associations |

	associations := OrderedCollection new.
	associations add: ('id' -> UUID new asString);
		add: ('r' -> 15);
		add: ('cx' -> aPoint x);
		add: ('cy' -> aPoint y);
		add: ('fill' -> 'orange');
		add: ('stroke' -> 'black');
		add: ('stroke-width' -> 1).

	^associations