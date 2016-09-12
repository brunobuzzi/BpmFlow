bpm figure
connectWith: coordinates color: color widthPx: widthPx
	| path |

	"path := self drawLineFrom: (figureOne getPointToConnectTo: figureTwo) 
					to: (figureTwo getPointToConnectTo: figureOne) 
					id: UUID new asString
					widthPx: widthPx
					stroke: stroke 
					fillColor: color."
	path := self drawLineM: coordinates id: UUID new asString widthPx: widthPx stroke: color fillColor: 'none'.

	self addFigure: path toGroup: self defaultNameForProcessGroup.

	^path