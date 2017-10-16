example
exampleTestCaseProcessWithScript
	| generator reader |

	reader:=  (XPDLReader2 forProcessNamed: 'Process with Scripts' withString: XPDLProcessDefinitionTemplate xpdlExample_process_with_script)
				connectProcesses; 
				yourself.

	generator := self on: reader xpdlPackages.

	generator 
		mapProcess: 'Process with Scripts' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^generator