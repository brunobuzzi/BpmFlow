other
getPackageNameFrom: xpdlDocument

	^(xpdlDocument findElementNamed: 'Package')
			ifNil: [nil]
			ifNotNil: [:node | node attributeAt: 'Name']