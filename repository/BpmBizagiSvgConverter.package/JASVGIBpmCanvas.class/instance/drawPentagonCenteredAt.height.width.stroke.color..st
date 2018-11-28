gateways
drawPentagonCenteredAt: aPoint height: height width: width stroke: stroke color: color
	| point1 point2 point3 point4 point5 line1 line2 line3 line4 line5 |

	point1 := aPoint x @ (aPoint y - (height //2) + 6).
	point2 := (aPoint x + (width //2) - 6) @ aPoint y.
	point3 := (aPoint x + 5) @ (aPoint y + (height //2) - 8).
	point4 := (aPoint x - 5) @ (aPoint y + (height //2) - 8).
	point5 := (aPoint x - (width //2) + 6) @ aPoint y.

	line1 := self drawLineFrom: point1 to: point2 stroke: stroke fillColor: color.
	line2 := self drawLineFrom: point2 to: point3 stroke: stroke fillColor: color.
	line3 := self drawLineFrom: point3 to: point4 stroke: stroke fillColor: color.
	line4 := self drawLineFrom: point4 to: point5 stroke: stroke fillColor: color.
	line5 := self drawLineFrom: point5 to: point1 stroke: stroke fillColor: color.

	self addFigure: line1 toGroup: self defaultNameForProcessGroup.
	self addFigure: line2 toGroup: self defaultNameForProcessGroup.
	self addFigure: line3 toGroup: self defaultNameForProcessGroup.
	self addFigure: line4 toGroup: self defaultNameForProcessGroup.
	self addFigure: line5 toGroup: self defaultNameForProcessGroup.

	^line1