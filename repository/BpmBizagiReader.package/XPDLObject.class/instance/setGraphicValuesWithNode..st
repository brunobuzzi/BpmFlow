graphics
setGraphicValuesWithNode: xmlNode
	"We set the graphic information of <newLane> using the XML node <xmlNode>"
	| gNode |

	gNode := xmlNode xPath: './NodeGraphicsInfos/NodeGraphicsInfo'.
	gNode := gNode ifNotEmpty: [gNode last] ifEmpty: [^self].
	self set: 'width' value: (Number readFrom: (gNode attributeAt: 'Width')).
	self set: 'height' value: (Number readFrom: (gNode attributeAt: 'Height')).

	gNode := gNode findElementNamed: 'Coordinates'.
	self set: 'x' value: (Number readFrom: (gNode attributeAt: 'XCoordinate')).
	self set: 'y' value: (Number readFrom: (gNode attributeAt: 'YCoordinate')).