other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Simple Registration' withString: XPDLProcessDefinitionTemplate xpdlExample_simple_registration)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'Simple Registration' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	"Associate the anonymous form with the ProcessDefinition"
	self defaultProcessDefinitionClass registerAnonymousStartFor:(self defaultProcessDefinitionClass getAllProcessesNamed: 'Simple Registration' in: 'ue-test') last.

	^processGenerator getProcessDefinitionNamed: 'Simple Registration' ifNone: [self assert: false].