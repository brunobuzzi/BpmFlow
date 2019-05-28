other
tearDown

	super tearDown.

	structureImporte executed ifFalse: [^self]. "nothing has been imported --> nothing to tearDwon"

	self removeFrom: 'ibm' apps: #('ibm.sales' 'ibm.budget' 'ibm.admins') processesName: #() rolesName: #('administrator') backofficeRoles: #('admin') usersName: #('robert' 'andrew' 'juan' 'ibm.admin').

	self removeFrom: 'google' apps: #('google.marketing' 'google.admins') processesName: #() rolesName: #('administrator') backofficeRoles: #('admin' 'administrator') usersName: #('alan' 'google.admin').

	#('albert' 'andrew' 'juan' 'alan' 'robert' 'ibm.admin' 'google.admin') do: [:each | (self getUserNamed: each) removeFromCache].