export
downloadZipProcessMapOf: aBpmProcessDefinition
	| fileName stream |

	stream := aBpmProcessDefinition getProcessMapStreamFor: self session user.
	fileName := stream gsfile name.

	self requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/octet-stream'; 
                                        fileName: fileName; 
                                        yourself)].