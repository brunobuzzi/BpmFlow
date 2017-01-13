other
downloadProcessMapOf: aBpmProcessDefinition
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: '<?xml version="1.0" encoding="utf-8"?>', String lf,aBpmProcessDefinition xmlString.

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (aBpmProcessDefinition processName, '.xpdl'); 
                                        yourself)].