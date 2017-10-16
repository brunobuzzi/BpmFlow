other
forProcessNamed: processName withString: xmlString 

	^super new initialize
		addXPDLDocument: (XMLDOMParser parse: xmlString) namedAs: processName;
		yourself