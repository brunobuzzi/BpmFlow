export
downloadProcessMapOf: aBpmProcessDefinition
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: self xmlHeader, String lf,aBpmProcessDefinition xmlString.

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (aBpmProcessDefinition processName, '.xpdl'); 
                                        yourself)].

	aBpmProcessDefinition subProcess do: [:each | self downloadProcessMapOf: each]