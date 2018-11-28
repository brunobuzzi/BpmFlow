other
forProcessNamed: xpdlPathFileName withString: xmlString 

	^super new initialize
		addXPDLDocument: (XMLDOMParser parse: xmlString) namedAs: xpdlPathFileName;
		yourself