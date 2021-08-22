other
logout

	self session logout.	
	self session unregister.
	self requestContext redirectTo: (self session systemRoot gemstoneIP, '/bpmflow')