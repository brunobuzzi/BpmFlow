other
createProcessDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'reuse-form' withString: XPDLProcessDefinitionTemplate xpdlDefinition_reuseExternalObject)
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages root: testRoot.
	processGenerator mapProcess: 'reuse-form' toApplication: (testRoot getExistingBpmApplicationOrCreateNewNamed: 'ue' in: 'env-ue');
		generateAllProcess.

	processGenerator processesDo: [:each | each addToCache].

	^processGenerator getProcessDefinitionNamed: 'reuse-form' ifNone: [self assert: false].