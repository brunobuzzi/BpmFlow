import
getApplicationFor: xpdlPackage
	| appName |

	appName := (uploadProcesses at: (selectedUploads keyAtValue: xpdlPackage fileName ifAbsent: [Error signal])).

	^self getApplicationManagerClass getAnyApplicationNamed: appName