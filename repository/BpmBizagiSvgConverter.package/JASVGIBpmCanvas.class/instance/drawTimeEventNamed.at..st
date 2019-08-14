events
drawTimeEventNamed: aString at: aPoint
	| clockLine1 clockLine2 |

	self drawEventNamed: aString at: aPoint radius: 15 stroke: self defultEventStroke color: '#90a5bd'.

	"render internal clock"
	self drawEventNamed: aString at: aPoint radius: 10 stroke: 'gray' color: '#d28247'.
	
	clockLine1 := self drawLineFrom: aPoint to: ((aPoint x + 9) @ aPoint y) color: 'black'.
	clockLine2 := self drawLineFrom: aPoint to: (aPoint x @ (aPoint y - 9)) color: 'black'.

	self addFigure: clockLine1 toGroup: self defaultNameForProcessGroup.
	self addFigure: clockLine2 toGroup: self defaultNameForProcessGroup.