other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self getXpdlReaderClass forProcessNamed: 'Simple Registration' withString: XPDLProcessDefinitionTemplate xpdlExample_simple_registration)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator mapProcess: 'Simple Registration' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'st');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	"Associate the anonymous form with the ProcessDefinition"
	BpmProcessDefinition registerAnonymousStartFor:(BpmProcessDefinition getAllProcessesNamed: 'Simple Registration' in: 'st') last.

	^processGenerator getProcessDefinitionNamed: 'Simple Registration' ifNone: [self assert: false].