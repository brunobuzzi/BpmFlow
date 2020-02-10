other
testValidImportWithRollback
	| google ibm |

	structureImporte := BpmStructureImporter newFor: (self defaultBpmUserClass getExistingOrNewUserNamed: 'admin'). "user is not an admin"

	structureImporte csvString: self csvExample1.

	structureImporte importBpmStructure.

	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: 'ibm') equals: true.
	self assert: (self defaultEnvironmentClass includesEnvironmentNamed: 'google') equals: true.

	ibm := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'ibm'.
	google := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: 'google'.

	self assert: (ibm applicationNamed: 'ibm.sales') notNil.
	self assert: (ibm applicationNamed: 'ibm.budget') notNil.
	self assert: (ibm applicationNamed: 'ibm.admins') notNil.
	self assert: (google applicationNamed: 'google.marketing') notNil.
	self assert: (google applicationNamed: 'google.admins') notNil.

	self assert: (ibm applicationNamed: 'ibm.sales') class equals: OrbeonApplication.
	self assert: (ibm applicationNamed: 'ibm.budget') class equals: BpmApplication.
	self assert: (ibm applicationNamed: 'ibm.admins') class equals: BpmApplication.
	self assert: (google applicationNamed: 'google.marketing') class equals: BpmApplication.
	self assert: (google applicationNamed: 'google.admins') class equals: BpmApplication.

	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (self getUserNamed: 'robert')) equals: true.
	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (self getUserNamed: 'andrew')) equals: true.
	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.budget') isGranted: (self getUserNamed: 'juan')) equals: true.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: 'ibm.admins') isGranted: (self getUserNamed: 'ibm.admin')) equals: true.

	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'google.marketing') isGranted: (self getUserNamed: 'alan')) equals: true.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'administrator' in: 'google.marketing') isGranted: (self getUserNamed: 'alan')) equals: true.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: 'google.admins') isGranted: (self getUserNamed: 'google.admin')) equals: true.

	structureImporte rollbackAll.

	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (self getUserNamed: 'robert')) equals: false.
	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (self getUserNamed: 'andrew')) equals: false.
	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'ibm.budget') isGranted: (self getUserNamed: 'juan')) equals: false.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: 'ibm.admins') isGranted: (self getUserNamed: 'ibm.admin')) equals: false.

	self assert: ((self defaultFrontOfficeRoleClass getRoleNamed: 'administrator' in: 'google.marketing') isGranted: (self getUserNamed: 'alan')) equals: false.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'administrator' in: 'google.marketing') isGranted: (self getUserNamed: 'alan')) equals: false.
	self assert: ((self defaultBackOfficeRoleClass getRoleNamed: 'admin' in: 'google.admins') isGranted: (self getUserNamed: 'google.admin')) equals: false.