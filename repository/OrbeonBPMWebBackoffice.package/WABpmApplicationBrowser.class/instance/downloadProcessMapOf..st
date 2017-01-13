xpdl download
downloadProcessMapOf: aBpmProcessDefinition

	self requestContext respond: [:response | 
        response document: ((aBpmProcessDefinition getProcessMapStream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (aBpmProcessDefinition processName, '.xpdl'); 
                                        yourself)].