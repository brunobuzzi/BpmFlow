other
setUp
	| application environment |

	application := self getApplicationManagerClass getAnyApplicationNamed: 'st' ifNone: [(self getOrbeonApplicationClass newNamed: 'st') addToCache].
	environment := BpmEnvironment getExistingEnvironmentOrCreateNewNamed: 'env-st'.
	application hasBpmEnvironment ifFalse: [environment registerApplication: application].

	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	users at: 'alberto' put: (BpmUser getExistingOrNewUserNamed: 'alberto').
	environment registerUser: (users at: 'alberto') ifPresent: []. 

	(BpmFrontOfficeRole getRoleNamed: 'approver' in: 'st') grantUser: (users at: 'alberto') ifPresent: [].

	procInstance := procDefinition createAndStartProcessInstance: nil. "this process is started by an anonymous user"