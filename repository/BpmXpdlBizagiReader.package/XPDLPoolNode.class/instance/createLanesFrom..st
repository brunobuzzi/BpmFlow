component creation
createLanesFrom: aXMLDocument
	"The receiver creates and add to lanes collection <lanes> all lanes contained in XML Document <aXMLDocument>"

	aXMLDocument allElementsNamed: 'Lane' do: [:xmlLaneNode | | newLane |
		newLane := XPDLLaneNode new 
								xmlSegment: xmlLaneNode;
								id: (xmlLaneNode attributeAt: 'Id');
								name: (xmlLaneNode attributeAt: 'Name');
								yourself.
		newLane setGraphicValues. "set the graphics values -x,y, width, height-"

		self addLane: newLane.].

	^lanes