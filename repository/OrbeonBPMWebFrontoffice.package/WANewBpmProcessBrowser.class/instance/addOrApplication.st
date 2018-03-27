other
addOrApplication

	(orApplication notNil and: [orApplication notEmpty])
	ifTrue: [orApplications add: orApplication].

	orApplication := nil