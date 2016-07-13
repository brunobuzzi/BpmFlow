export
downloadZipProcessMapOf: aBpmTaskAssignment
	| contents fileStream fileName |

	fileName := '/tmp/', aBpmTaskAssignment process getTopProcess processName, Lag1MwcRandom new integer printString, '.zip'.

	self createZipFileFor: aBpmTaskAssignment process getTopProcess withName: fileName.

	fileStream := FileStream read: fileName.

	contents := fileStream contents.

	self requestContext respond: [:response | 
        response document: ((contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/octet-stream'; 
                                        fileName: fileName; 
                                        yourself)].