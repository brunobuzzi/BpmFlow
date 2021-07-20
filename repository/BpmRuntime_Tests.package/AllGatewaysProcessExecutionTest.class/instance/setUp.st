other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := testRoot getAllProcessesNamed: 'all gateways' in: 'ue'. "answer a collection with all versions"
	
	environment := testRoot getExistingEnvironmentOrCreateNewNamed: 'env-ue'.
 
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].

	self registerUsers: #('alberto') inExecutionAndEnvironment: environment.

	self grantUsers: {'alberto' -> 'manager'} in: 'ue'.

	procInstance := procDefinition createAndStartProcessInstance: (self getUserNamed: 'alberto').

	"we force the creation of form definition because they are used in some conditions. At runtime this could not happend because at import time all forms definition must be already created"
	self formInstance_task4_withoutProcess. "see #1086"
	self formInstance_task5_withoutProcess. "see #1086"
	self formInstance_task7_withoutProcess. "see #1086"
	self formInstance_task6_withoutProcess. "see #1086"