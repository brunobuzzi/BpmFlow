other
downloadProcessMap
	| stream |

	stream := fileOutObject isProcessDefinition ifTrue: [fileOutObject getProcessMapStream] ifFalse: [fileOutObject getProcessMapStreamFor: user].

	webComponent requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/csv'; 
                                        fileName: (fileOutObject processName, '.xpdl'); 
                                        yourself)].