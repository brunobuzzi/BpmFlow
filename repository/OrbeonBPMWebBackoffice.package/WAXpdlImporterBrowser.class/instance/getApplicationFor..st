import
getApplicationFor: xpdlPackage
	| appName |

	appName := (uploadProcesses at: (selectedUploads keyAtValue: (xpdlPackage getName, '.xpdl') ifAbsent: [Error signal])).

	^self getApplicationManagerClass getAnyApplicationNamed: appName