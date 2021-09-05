svg properties
createXpdlReader

	^self session systemRoot newXpdlReaderForProcessNamed: 'convert' withXpdlString: self getModelOrSubProcess xmlString