other
setUp
	| application environment |

	super setUp.

	self createStEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-st'.
	application := testRoot applicationNamed: 'st' ifNone: [testRoot getExistingBpmApplicationOrCreateNewNamed: 'st' in: 'env-st'].
	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := testRoot getAllProcessesNamed: 'Simple Registration' in: 'st'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	self registerUsers: #('alberto') inExecutionAndEnvironment: environment.

	self grantUsers: {'alberto' -> 'approver'} in: 'st'.

	procInstance := procDefinition createAndStartProcessInstance: nil. "this process is started by an anonymous user"