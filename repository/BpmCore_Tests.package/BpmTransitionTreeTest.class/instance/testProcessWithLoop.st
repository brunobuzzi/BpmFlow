other
testProcessWithLoop
	| reader processGenerator processDefinition processTree |

	reader:= (self defaultXpdlReaderClass forProcessNamed: 'dashboard-process-with-loop' withString: XPDLProcessDefinitionTemplate xpdlExample_dashboard_with_loop)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: reader xpdlPackages.

	processGenerator 
		mapProcess: 'dashboard-process-with-loop' toApplication: (self defaultApplicationManagerClass getAnyApplicationNamed: 'import-test-app');
		generateAllProcess.

	processDefinition := processGenerator getProcessDefinitionNamed: 'dashboard-process-with-loop' ifNone: [self assert: false].

	processTree := processDefinition asTree.

	self assert: processTree getArtifacts size equals: 3. "three artifacts"
	self assert: processTree asOrderedCollection size equals: 2. "two transitions"

	self assert: processTree getAllPossiblePath size equals: 1. 
	self assert: processTree getAllPossiblePathToEnd size equals: 1.