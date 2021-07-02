other
getUsernameFromXmlString

	xmlDocument := XMLDOMParser parse: xmlString.

	^(xmlDocument xPath: '//fr:username')
		ifEmpty: ['No Data about the user'] 
		ifNotEmpty: [:collection | 
			collection first strings isEmpty 
				ifTrue: ['No Data about the user'] 
				ifFalse: [collection first strings last]]