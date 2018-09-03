other
registerApplication: anApplication
	"The receiver register <anApplication> as a part of itself if other <BpmEnviroment> already have the application <anApplication> registered raise <anExeception>"

	anApplication hasBpmEnvironment 
	ifTrue: [^ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] is already included in the BPM environment named [', anApplication environmentName, ']'].

	anApplication bpmEnvironment: self. 
	^applications at: anApplication applicationName put: anApplication