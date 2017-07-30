extended attributes
setExtendedAttributesWithNode: xmlNode
	"The receiver set the extended attributes <expectedResult> and <transitionPreviousFields> supported by the Process Engine"

	xmlNode allElementsNamed: 'ExtendedAttribute' do: [:eachAttr | | nodeValue |
		"-extended attribute- a TextArea in Bizagi Modeler (value is a XML)"
		"-extended attribute- a TextBox in Bizagi Modeler (value is a string)"

		"nodeValue := (#('expectedResult' 'activationBlock') includes: (eachAttr attributeAt: 'Name'))  
			ifTrue: [(XMLDOMParser parse: (eachAttr attributeAt: 'Value')) contentString]
			ifFalse: [eachAttr attributeAt: 'Value']. "

		nodeValue := [(XMLDOMParser parse: (eachAttr attributeAt: 'Value')) contentString] on: Error do: [:ex |  eachAttr attributeAt: 'Value'].

		self setExtendedAttribute: (eachAttr attributeAt: 'Name') value: nodeValue.
	].