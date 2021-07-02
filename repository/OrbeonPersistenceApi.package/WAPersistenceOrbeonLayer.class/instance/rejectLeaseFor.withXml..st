service-lock
rejectLeaseFor: anOrbeonFormInstance withXml: xmlString
	| mimeDocument |

	mimeDocument := WAMimeDocument on: '' mimeType: WAMimeType applicationAtomXml.

	self requestContext response
		headerAt: 'timeout' put: ('Second-', anOrbeonFormInstance secondsToExpire printString);
		document: mimeDocument mimeType: WAMimeType applicationAtomXml;
		status: WAResponse statusLocked;
		nextPutAll: xmlString.

	^mimeDocument