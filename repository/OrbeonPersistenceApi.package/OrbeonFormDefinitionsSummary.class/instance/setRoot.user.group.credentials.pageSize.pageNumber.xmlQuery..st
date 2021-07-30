private
setRoot: anOrbeonSystemRoot user: username group: groupname credentials: credentials pageSize: pSize pageNumber: pNumber xmlQuery: xmlDocument

	returnedFormsSize := 0.
	totalFormsSize := 0.
	summaryStream := OrbeonSummaryStream newOn: self.

	systemRoot := anOrbeonSystemRoot.
	user := username.
	group := groupname.
	userCredentials := credentials.
	pageSize := pSize.
	pageNumber := pNumber.
	xmlQuery := xmlDocument