components creation
createTransitionNodesFrom: aXMLDocument
	"The receiver creates and adds all transitions contained in XML document <aXMLDocument> to it's transition collection <transitions>"

	(aXMLDocument xPath: 'Transitions/Transition') do: [:eachNode | | newTransition startCond isDefaultFlow |
		(eachNode findElementNamed: 'Condition') 
			ifNotNil: [:condNode | isDefaultFlow := (condNode attributeAt: 'Type') = 'OTHERWISE'].
		startCond := eachNode findElementNamed: 'Expression'.
		startCond ifNotNil: [startCond := startCond contentString].
		newTransition := XPDLTransitionNode new 
									xmlSegment: eachNode;
									id: (eachNode attributeAt: 'Id');
									name: (eachNode attributeAt: 'Name');
									startId: (eachNode attributeAt: 'From');
									endId: (eachNode attributeAt: 'To');
									startCondition: startCond;
									isDefaultFlow: isDefaultFlow;
									yourself.
		newTransition setExtendedAttributes; setGraphicValues.
		self addTransition: newTransition.].

	^transitions