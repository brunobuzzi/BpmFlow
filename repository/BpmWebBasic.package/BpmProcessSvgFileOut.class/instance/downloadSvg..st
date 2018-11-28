file out
downloadSvg: aStream

	webComponent requestContext respond: [:response | 
        response document: ((aStream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'image/svg+xml'; 
                                        fileName: (fileOutObject processName, '.svg'); 
                                        yourself)].