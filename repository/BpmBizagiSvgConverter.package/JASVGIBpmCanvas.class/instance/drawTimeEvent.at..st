events
drawTimeEvent: anXPDLEventNode at: aPoint
	| clockLine1 clockLine2 center |

	center := (anXPDLEventNode getWidth = 30)
		ifTrue: [(anXPDLEventNode getXcoordinate @ anXPDLEventNode getYcoordinate) + (anXPDLEventNode getWidth asNumber // 2)]
		ifFalse: [anXPDLEventNode getXcoordinate @ anXPDLEventNode getYcoordinate].

	self drawEventNamed: anXPDLEventNode getName at: center radius: (anXPDLEventNode getWidth asNumber // 2) stroke: self defultEventStroke color: '#90a5bd'.

	"render internal clock"
	self drawEventNamed: anXPDLEventNode getName at: center radius: ((anXPDLEventNode getWidth asNumber // 2) - 5) stroke: 'gray' color: '#d28247'.
	
	clockLine1 := self drawLineFrom: center to: ((center x + 9) @ center y) color: 'black'.
	clockLine2 := self drawLineFrom: center to: (center x @ (center y - 9)) color: 'black'.

	self addFigure: clockLine1 toGroup: self defaultNameForProcessGroup.
	self addFigure: clockLine2 toGroup: self defaultNameForProcessGroup.