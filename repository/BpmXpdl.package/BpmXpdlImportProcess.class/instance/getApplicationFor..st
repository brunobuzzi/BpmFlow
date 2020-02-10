mapping
getApplicationFor: xpdlPackage
	| appName |

	appName := (indexApplicationMapper at: (indexXpdlFileMapper keyAtValue: xpdlPackage fileName ifAbsent: [ProcessAppMappingException signal: 'XPDL package file not found'])).

	^bpmEnvironment applicationNamed: appName