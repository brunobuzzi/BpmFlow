other
addAndApplication

	(andApplication notNil and: [andApplication notEmpty])
	ifTrue: [andApplications add: andApplication].

	andApplication := nil