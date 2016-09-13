bpm figure
connectWith: coordinates color: color widthPx: widthPx
	| path |

	path := self drawLineM: coordinates id: UUID new asString widthPx: widthPx stroke: color fillColor: 'none'.

	self addFigure: path toGroup: self defaultNameForProcessGroup.

	^path