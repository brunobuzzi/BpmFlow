other
downloadSystemRoleStructure

	self requestContext respond: [:response | 
        response document: ((self session user printSystemRoleStructure asByteArray seasideMimeDocument) 
										mimeType: 'application/csv'; 
										fileName: 'configuration.csv'; 
										yourself).
	].