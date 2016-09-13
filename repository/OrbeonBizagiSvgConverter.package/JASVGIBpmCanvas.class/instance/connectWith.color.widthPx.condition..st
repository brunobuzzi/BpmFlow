bpm figure
connectWith: coordinates color: color widthPx: widthPx condition: condition
	| path text |

	path := self drawLineM: coordinates id: UUID new asString widthPx: widthPx stroke: color fillColor: 'none'.

	text := self drawText: condition at: coordinates first textSizePx: self defaultTransitionConditionSize.

	self addFigure: path toGroup: self defaultNameForProcessGroup.
	self addFigure: text toGroup: self defaultNameForProcessGroup.

	^path