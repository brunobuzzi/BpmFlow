setup
createGrant_UsersOn: aStream

	procInstance definition roles do: [:role | 
		aStream tab;
			nextPutAll: 'self grantUsers: {''proc-user'' -> ''',role name,'''} in: ''',self getApplicationName,'''.';
			cr.
	].