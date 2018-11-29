other
setInternalDataWithNode: xmlNode

	script := (xmlNode findElementNamed: 'Script')
					ifNil: [nil]
					ifNotNil: [:node | node contentString].