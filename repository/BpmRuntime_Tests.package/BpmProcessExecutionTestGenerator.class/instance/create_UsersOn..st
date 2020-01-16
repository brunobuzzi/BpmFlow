cg setUp
create_UsersOn: aStream

	aStream tab;
		nextPutAll: 	'self registerUsers: #(', self getDefaultUserName,') inExecutionAndEnvironment: environment.'; 
		cr.