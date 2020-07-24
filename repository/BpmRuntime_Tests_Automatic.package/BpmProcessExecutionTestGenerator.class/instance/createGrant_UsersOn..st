cg setUp
createGrant_UsersOn: aStream

	procInstance getProcessesTreeAsCollection do: [:eachProcInstance | 
		eachProcInstance rolesDo: [:role | 
			aStream tab;
				nextPutAll: 'self grantUsers: {', self getDefaultUserName,' -> ',role name quoted,'} in: ',eachProcInstance getApplicationName quoted,'.';
				cr.
		].
	].