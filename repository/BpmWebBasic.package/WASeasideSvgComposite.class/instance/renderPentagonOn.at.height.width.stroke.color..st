pentagon
renderPentagonOn: html at: aPoint height: height width: width stroke: stroke color: color
	| point1 point2 point3 point4 point5 |

	point1 := aPoint x @ (aPoint y - (height //2) + 6).
	point2 := (aPoint x + (width //2) - 6) @ aPoint y.
	point3 := (aPoint x + 5) @ (aPoint y + (height //2) - 8).
	point4 := (aPoint x - 5) @ (aPoint y + (height //2) - 8).
	point5 := (aPoint x - (width //2) + 6) @ aPoint y.

	self renderLineOn: html from: point1 to: point2 stroke: stroke fillColor: color.
	self renderLineOn: html from: point2 to: point3 stroke: stroke fillColor: color.
	self renderLineOn: html from: point3 to: point4 stroke: stroke fillColor: color.
	self renderLineOn: html from: point4 to: point5 stroke: stroke fillColor: color.
	self renderLineOn: html from: point5 to: point1 stroke: stroke fillColor: color.