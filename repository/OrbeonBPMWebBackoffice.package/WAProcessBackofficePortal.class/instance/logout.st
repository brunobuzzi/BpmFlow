other
logout

	self session logout.	
	self session unregister.
	self requestContext redirectTo: (self getGemStoneServerConfiguration gemstoneIP, '/bpmflow-backoffice')