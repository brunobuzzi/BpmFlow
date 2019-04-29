applications
registerApplication: anApplication
	"The receiver register <anApplication> if other <BpmEnviroment> already have <anApplication> registered then raise <anExeception>"

	anApplication hasBpmEnvironment 
	ifTrue: [^ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] is already included in BPM environment named [', anApplication environmentName, ']'].

	(applications includesKey: anApplication applicationName) 
	ifTrue: [^ApplicationWithBpmEnvironmentException signal: 'An application named [', anApplication applicationName,'] is already registered in BPM environment named [', name, ']'].

	anApplication bpmEnvironment: self. 
	^applications at: anApplication applicationName put: anApplication