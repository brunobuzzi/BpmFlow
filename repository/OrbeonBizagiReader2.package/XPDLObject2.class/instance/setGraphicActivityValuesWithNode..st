graphics
setGraphicActivityValuesWithNode: xmlNode
	"We set the graphic information of <newActivity> using the XML node <xmlNode>"
	| gNode |

	gNode := xmlNode findElementNamed: 'NodeGraphicsInfo'.
	self set: 'width' value: (Number readFrom: (gNode attributeAt: 'Width')).
	self set: 'height' value: (Number readFrom: (gNode attributeAt: 'Height')).

	gNode := xmlNode findElementNamed: 'Coordinates'.
	self set: 'x' value: (Number readFrom: (gNode attributeAt: 'XCoordinate')).
	self set: 'y' value: (Number readFrom: (gNode attributeAt: 'YCoordinate')).