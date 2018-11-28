other
getApplicationFor: xpdlPackage
	| appName |

	appName := (indexApplicationMapper at: (indexXpdlFileMapper keyAtValue: xpdlPackage fileName ifAbsent: [ProcessAppMappingException signal: 'XPDL package file not found'])).

	^self getApplicationManagerClass getAnyApplicationNamed: appName in: bpmEnvironment