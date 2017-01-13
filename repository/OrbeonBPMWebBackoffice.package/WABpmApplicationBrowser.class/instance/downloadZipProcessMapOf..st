other
downloadZipProcessMapOf: aBpmProcessDefinition
	| contents fileStream fileName |

	fileName := '/tmp/', aBpmProcessDefinition processName, Lag1MwcRandom new integer printString, '.zip'.

	self createZipFileFor: aBpmProcessDefinition withName: fileName.

	fileStream := FileStream read: fileName.

	contents := fileStream contents.

	self requestContext respond: [:response | 
        response document: ((contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/octet-stream'; 
                                        fileName: fileName; 
                                        yourself)].