other
testValidImport
	| google ibm |

	structureImporte := BpmStructureImporter newFor: (testRoot getExistingOrNewUserNamed: 'admin') systemRoot: testRoot. "user is not an admin"

	structureImporte csvString: self csvExample1.

	structureImporte importBpmStructure.

	self assert: (testRoot includesEnvironmentNamed: 'ibm') equals: true.
	self assert: (testRoot includesEnvironmentNamed: 'google') equals: true.

	ibm := testRoot getExistingEnvironmentOrCreateNewNamed: 'ibm'.
	google := testRoot getExistingEnvironmentOrCreateNewNamed: 'google'.

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

	self assert: ((testRoot getFrontOfficeRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (testRoot getUserNamed: 'robert')) equals: true.
	self assert: ((testRoot getFrontOfficeRoleNamed: 'administrator' in: 'ibm.sales') isGranted: (testRoot getUserNamed: 'andrew')) equals: true.
	self assert: ((testRoot getFrontOfficeRoleNamed: 'administrator' in: 'ibm.budget') isGranted: (testRoot getUserNamed: 'juan')) equals: true.
	self assert: ((testRoot getBackOfficeRoleNamed: 'admin' in: 'ibm.admins') isGranted: (testRoot getUserNamed: 'ibm.admin')) equals: true.

	self assert: ((testRoot getFrontOfficeRoleNamed: 'administrator' in: 'google.marketing') isGranted: (testRoot getUserNamed: 'alan')) equals: true.
	self assert: ((testRoot getBackOfficeRoleNamed: 'administrator' in: 'google.marketing') isGranted: (testRoot getUserNamed: 'alan')) equals: true.
	self assert: ((testRoot getBackOfficeRoleNamed: 'admin' in: 'google.admins') isGranted: (testRoot getUserNamed: 'google.admin')) equals: true.