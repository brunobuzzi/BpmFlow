export
downloadProcessMapOf: aBpmTaskAssignment
	| stream |

	stream := PrintStream on: String new.

	stream nextPutAll: self xmlHeader, String lf, (aBpmTaskAssignment process generateProcessMapFor: self session user) prettyPrinted.

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (aBpmTaskAssignment processName, '.xpdl'); 
                                        yourself)].