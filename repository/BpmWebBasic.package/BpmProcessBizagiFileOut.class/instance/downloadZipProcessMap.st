file out
downloadZipProcessMap
	| fileName stream |

	stream := fileOutObject isProcessDefinition ifTrue: [fileOutObject getProcessMapStream] ifFalse: [fileOutObject getProcessMapStreamFor: user].

	fileName := (stream class = PrintStream) 
					ifTrue: [fileOutObject processName, '.xpdl'] "single file >> PrintStream"
					ifFalse: [stream gsfile name]. "multiple files >> Zip on disk"

	webComponent requestContext respond: [:response | 
        response document: ((stream contents asByteArray seasideMimeDocument) 
                                        mimeType: 'application/octet-stream'; 
                                        fileName: fileName; 
                                        yourself)].