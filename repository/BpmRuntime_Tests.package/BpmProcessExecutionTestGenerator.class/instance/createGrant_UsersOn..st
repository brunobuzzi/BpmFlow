cg setUp
createGrant_UsersOn: aStream

	procInstance definition roles do: [:role | 
		aStream tab;
			nextPutAll: 'self grantUsers: {''proc-user'' -> ',role name quoted,'} in: ',self getApplicationName quoted,'.';
			cr.
	].