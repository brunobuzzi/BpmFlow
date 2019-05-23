other
setUp
	| environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'reuse-form' in: 'ue'. "answer a collection with all versions"

	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.

	self registerUsers: #('andrew vo' 'andrew vm' 'andrew vc') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vo' -> 'user'. 'andrew vm' -> 'approver'. 'andrew vc' -> 'form-admin'} in: 'ue'.