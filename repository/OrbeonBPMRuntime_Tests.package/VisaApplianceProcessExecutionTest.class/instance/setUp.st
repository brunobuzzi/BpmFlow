other
setUp
	| subProcDef |

	super setUp.
	users := Dictionary new.

	procDefinition := BpmProcessDefinition getAllProcessesNamed: 'visa-appliance' in: 'ue'. "answer a collection with all versions"
	
	procDefinition := procDefinition ifEmpty: [self createProcessDefinition] ifNotEmpty: [:collection | collection last].
	procDefinition setNoneAssignationPolicy.
	subProcDef := procDefinition subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.
	subProcDef := subProcDef subProcesses asArray last.
	subProcDef setNoneAssignationPolicy.

	users at: 'andrew vo' put: (BpmUser getExistingOrNewUserNamed: 'andrew vo').
	users at: 'andrew vm' put: (BpmUser getExistingOrNewUserNamed: 'andrew vm').
	users at: 'andrew vc' put: (BpmUser getExistingOrNewUserNamed: 'andrew vc').
	users at: 'andrew fo' put: (BpmUser getExistingOrNewUserNamed: 'andrew fo').
	users at: 'andrew po' put: (BpmUser getExistingOrNewUserNamed: 'andrew po').
	users at: 'andrew do' put: (BpmUser getExistingOrNewUserNamed: 'andrew do').

	(BpmFrontOfficeRole getRoleNamed: 'visa officer' in: 'ue') grantUser: (users at: 'andrew vo') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'visa manager' in: 'ue') grantUser: (users at: 'andrew vm') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'visa checker' in: 'ue') grantUser: (users at: 'andrew vc') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'finance officer' in: 'ue') grantUser: (users at: 'andrew fo') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'properties officer' in: 'ue') grantUser: (users at: 'andrew po') ifPresent: [].
	(BpmFrontOfficeRole getRoleNamed: 'debts officer' in: 'ue') grantUser: (users at: 'andrew do') ifPresent: [].