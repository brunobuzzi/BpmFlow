other
setGraphicValuesWithNode: xmlNode
	"We set the graphic information of <newLane> using the XML node <xmlNode>"

	(xmlNode xPath: './ConnectorGraphicsInfos/ConnectorGraphicsInfo/Coordinates') do: [:eachNode | | x y |
		x := Number readFrom: (eachNode attributeAt: 'XCoordinate').
		y := Number readFrom: (eachNode attributeAt: 'YCoordinate').
		coordinates add: x @ y.
	].