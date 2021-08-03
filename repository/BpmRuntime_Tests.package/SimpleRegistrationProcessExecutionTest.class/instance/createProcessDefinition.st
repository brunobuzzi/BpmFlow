other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Simple Registration' withString: XPDLProcessDefinitionTemplate xpdlDefinition_simple_registration)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'Simple Registration' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'st' in: 'env-st');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	"Associate the anonymous form with the ProcessDefinition"
	testRoot registerAnonymousStartFor: (testRoot getAllProcessesNamed: 'Simple Registration' in: 'st') last.

	^processGenerator getProcessDefinitionNamed: 'Simple Registration' ifNone: [self assert: false].