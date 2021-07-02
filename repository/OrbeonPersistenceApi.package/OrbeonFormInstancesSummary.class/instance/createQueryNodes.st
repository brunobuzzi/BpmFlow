other
createQueryNodes
	"The receiver extract the -query nodes- from the XML Document <xmlDocument>.
	These -query nodes- are used to query the Orbeon Summary and to show summary fields"

	queryNodes := OrderedCollection new.

	(xmlQuery allElementsNamed: 'query') do: [:node | | queryNode value |
		value := node strings notEmpty ifTrue: [node strings last] ifFalse: [nil]. "get the field Value to Search"
		queryNode := OrbeonQueryNode new name: (node attributeAt: 'name');
								path: (node attributeAt: 'path');
								type: (node attributeAt: 'type');
								control: (node attributeAt: 'control');
								searchField: (node attributeAt: 'search-field'); 
								summaryField: (node attributeAt: 'summary-field'); 
								match: (node attributeAt: 'match');  "get the Search type"
								value: value;
								yourself.
		queryNodes add: queryNode.
		].

	^queryNodes