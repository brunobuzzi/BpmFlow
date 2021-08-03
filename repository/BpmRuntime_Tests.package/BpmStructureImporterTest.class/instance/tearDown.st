setUp
tearDown

	super tearDown.

	structureImporte executed ifFalse: [^self]. "nothing has been imported --> nothing to tearDwon"

	testRoot removeFrom: 'ibm' apps: #('ibm.sales' 'ibm.budget' 'ibm.admins') processesName: #() rolesName: #('administrator') backofficeRoles: #('admin') usersName: #('robert' 'andrew' 'juan' 'ibm.admin').

	testRoot removeFrom: 'google' apps: #('google.marketing' 'google.admins') processesName: #() rolesName: #('administrator') backofficeRoles: #('admin' 'administrator') usersName: #('alan' 'google.admin').

	#('andrew' 'juan' 'alan' 'google.admin' 'ibm.admin' 'robert') do: [:each | testRoot unregisterUser: (testRoot getUserNamed: each)  ifAbsent: [self assert: false]].