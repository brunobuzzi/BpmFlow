other
setUp
	| subProcDef environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'visa-appliance' in: 'ue'. "answer a collection with all versions"

	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.
	procDefinition setNoneAssignationPolicy.
	subProcDef := procDefinition subProcessesLast.
	subProcDef setNoneAssignationPolicy.
	subProcDef := subProcDef subProcessesLast.
	subProcDef setNoneAssignationPolicy.

	self registerUsers: #('andrew vo' 'clark' 'andrew vo2' 'andrew vo3' 'andrew vm' 'andrew vc' 'andrew fo' 'andrew po' 'andrew do') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vo' -> 'visa officer'. 'clark' -> 'visa officer'. 'andrew vm' -> 'visa manager'. 'andrew vc' -> 'visa checker'. 'andrew fo' -> 'finance officer'. 'andrew po' -> 'properties officer'. 'andrew do' -> 'debts officer'.} 
			in: 'ue'.

	"to test Execution Context"
	(testRoot getExistingEnvironmentOrCreateNewNamed: 'env-ue') 
		registerApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'app-test') ifPresent: [] ifTaken: [];
		registerApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'app-test-2') ifPresent: [] ifTaken: [].

	self createNewOrGetExistingFrontOfficeRole: 'visa officer' in: 'app-test'.
	self createNewOrGetExistingFrontOfficeRole: 'visa officer' in: 'app-test-2'.
	self createNewOrGetExistingFrontOfficeRole: 'visa manager' in: 'app-test'.
	self createNewOrGetExistingFrontOfficeRole: 'visa manager' in: 'app-test-2'.
	self grantUsers: {'andrew vo' -> 'visa officer'.} in: 'app-test'.
	self grantUsers: {'andrew vm' -> 'visa manager'.} in: 'app-test'.
	self grantUsers: {'andrew vm' -> 'visa manager'.} in: 'app-test-2'.