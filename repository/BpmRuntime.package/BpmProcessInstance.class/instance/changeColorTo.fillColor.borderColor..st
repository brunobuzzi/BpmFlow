xpdl
changeColorTo: xmlNode fillColor: fillColorIndex borderColor: borderColorIndex

	(xmlNode findElementNamed: 'NodeGraphicsInfo') attributeAt: 'FillColor' put: fillColorIndex.
	(xmlNode findElementNamed: 'NodeGraphicsInfo') attributeAt: 'BorderColor' put: borderColorIndex.