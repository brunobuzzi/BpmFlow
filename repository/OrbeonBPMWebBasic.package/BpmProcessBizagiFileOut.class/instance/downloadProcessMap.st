other
downloadProcessMap

	webComponent requestContext respond: [:response | 
        response document: ((fileOutObject getProcessMapStream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (fileOutObject processName, '.xpdl'); 
                                        yourself)].