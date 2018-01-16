export
downloadProcessMapOf: aBpmProcessInstance

	self requestContext respond: [:response | 
        response document: ((aBpmProcessInstance getProcessMapStreamFor: self session user) contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (aBpmProcessInstance processName, '.xpdl'); 
                                        yourself].