other
setUp
	| application environment |

	application := self getApplicationManagerClass getAnyApplicationNamed: 'st' ifNone: [(self getOrbeonApplicationClass newNamed: 'st') addToCache].
	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: 'env-st'.
	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	self processExecutionSimulator registerUser: (BpmUser getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (self getUserNamed: 'alberto') ifPresent: []. 

	(BpmFrontOfficeRole getRoleNamed: 'approver' in: 'st') grantUser: (self getUserNamed: 'alberto') ifPresent: [].

	procInstance := procDefinition createAndStartProcessInstance: nil. "this process is started by an anonymous user"