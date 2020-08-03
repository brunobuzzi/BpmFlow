other
parentLanes
	| parentLanes |

	parentLanes := OrderedCollection new.

	self parentLanesDo: [:each | parentLanes add: each].

	^parentLanes