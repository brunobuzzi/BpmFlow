other
setUp
	| subProcDef environment |

	super setUp.

	self createUeEnvironmentAndApplication. "create the <BpmEnvironment> and <OrbeonApplication>"

	procDefinition := self defaultProcessDefinitionClass getAllProcessesNamed: 'visa-appliance' in: 'ue'. "answer a collection with all versions"

	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	environment := procDefinition bpmEnvironment.
	procDefinition setNoneAssignationPolicy.
	subProcDef := procDefinition subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.
	subProcDef := subProcDef subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.

	self registerUsers: #('andrew vo' 'andrew vo2' 'andrew vo3' 'andrew vm' 'andrew vc' 'andrew fo' 'andrew po' 'andrew do') inExecutionAndEnvironment: environment.

	self grantUsers: {'andrew vo' -> 'visa officer'. 'andrew vm' -> 'visa manager'. 'andrew vc' -> 'visa checker'. 'andrew fo' -> 'finance officer'. 'andrew po' -> 'properties officer'. 'andrew do' -> 'debts officer'.} 
			in: 'ue'.