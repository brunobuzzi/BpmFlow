other
downloadZipProcessMap
	| fileName stream |

	stream := fileOutObject isProcessDefinition ifTrue: [fileOutObject getProcessMapStream] ifFalse: [fileOutObject getProcessMapStreamFor: user].

	fileName := stream gsfile name.

	webComponent requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/octet-stream'; 
                                        fileName: fileName; 
                                        yourself)].