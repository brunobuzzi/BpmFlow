other
downloadSystemRoleStructure

	self requestContext respond: [:response | 
        response document: (((self session user printSystemRoleStructureIn: self session bpmEnvironment) asByteArray seasideMimeDocument) 
										mimeType: 'application/csv'; 
										fileName: 'configuration.csv'; 
										yourself).
	].