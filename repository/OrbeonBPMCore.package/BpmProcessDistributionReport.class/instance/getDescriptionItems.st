other
getDescriptionItems

	^super getDescriptionItems
		at: 'Process:' put: processName;
		at: 'Version:' put: version;
		yourself