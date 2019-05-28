other
testValidImport
	| google ibm |

	structureImporte := BpmStructureImporter newFor: (self defaultBpmUserClass getExistingOrNewUserNamed: 'admin'). "user is not an admin"

	structureImporte csvString: self csvExample1.

	structureImporte importBpmStructure.

	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: 'ibm') equals: true.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: 'google') equals: true.

	ibm := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'ibm'.
	google := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'google'.

	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ibm.sales' in: ibm) notNil.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ibm.budget' in: ibm) notNil.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ibm.admins' in: ibm) notNil.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'google.marketing' in: google) notNil.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'google.admins' in: google) notNil.

	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ibm.sales' in: ibm) class equals: OrbeonApplication.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ibm.budget' in: ibm) class equals: BpmApplication.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'ibm.admins' in: ibm) class equals: BpmApplication.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'google.marketing' in: google) class equals: BpmApplication.
	self assert: (self defaultApplicationManagerClass getAnyApplicationNamed: 'google.admins' in: google) class equals: BpmApplication.

	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (self getUserNamed: 'robert')) equals: true.
	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (self getUserNamed: 'andrew')) equals: true.
	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.budget') isGranted: (self getUserNamed: 'juan')) equals: true.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: 'ibm.admins') isGranted: (self getUserNamed: 'ibm.admin')) equals: true.

	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'google.marketing') isGranted: (self getUserNamed: 'alan')) equals: true.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'administrator' in: 'google.marketing') isGranted: (self getUserNamed: 'alan')) equals: true.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: 'google.admins') isGranted: (self getUserNamed: 'google.admin')) equals: true.