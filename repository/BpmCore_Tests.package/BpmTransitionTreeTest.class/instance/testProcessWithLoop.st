other
testProcessWithLoop
	| processDefinition processTree |

	processDefinition := testRoot 
				newBpmProcessDefinitionNamed: 'dashboard-process-with-loop'
				withXpdlString: XPDLProcessDefinitionTemplate xpdlDefinition_dashboard_with_loop
				inEnvironmentNamed: 'env-test'
				inApplicationNamed: 'import-test-app'.

	processTree := processDefinition asTree.

	self assert: processTree getArtifactsSize equals: 3. "three artifacts"
	self assert: processTree asOrderedCollection size equals: 2. "two transitions"

	self assert: processTree getAllPossiblePath size equals: 1. 
	self assert: processTree getAllPossiblePathToEnd size equals: 1.