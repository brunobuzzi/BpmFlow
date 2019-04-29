applications
removeApplication: anApplication
	"The receiver remove <anApplication> from the System"

	anApplication hasBpmEnvironment 
	ifFalse: [^ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] has no BPM Environment'].

	(self defaultProcessDefinitionClass getAllProcessDefinitionIn: anApplication bpmEnvironment) do: [:procDefinition | procDefinition removeFromCache].

	self defaultBackOfficeRoleClass cache do: [:eachRole | eachRole removeAllUsers. eachRole removeFromCache].
	self defaultFrontOfficeRoleClass cache do: [:eachRole | eachRole removeAllUsers. eachRole removeFromCache].

	self unregisterApplication: anApplication.

	anApplication removeFromCache.