connections
connect: figureOne to: figureTwo color: color stroke: stroke widthPx: widthPx
	| line |

	line := self drawLineFrom: (figureOne getPointToConnectTo: figureTwo) 
					to: (figureTwo getPointToConnectTo: figureOne) 
					id: UUID new asString
					widthPx: widthPx
					stroke: stroke 
					fillColor: color.

	self addFigure: line toGroup: self defaultNameForProcessGroup.

	^line