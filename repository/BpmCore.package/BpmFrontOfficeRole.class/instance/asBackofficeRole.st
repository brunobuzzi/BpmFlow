other
asBackofficeRole

	^self defaultBackOfficeRoleClass new
		name: name;
		isAdmin: isAdmin;
		application: application;
		yourself