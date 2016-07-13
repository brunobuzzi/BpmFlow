other
exampleTestCaseFixIssueReportArchitect
	| generator |

	generator := self on: (XPDLReader2 exampleMultipleProcesses) xpdlPackages.

	generator 
		mapProcess: 'test-case-process' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'fix-issue' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		mapProcess: 'architect-process' toApplication: (self getApplicationManagerClass getAnyApplicationNamed: 'ue');
		generateAllProcess.

	^generator