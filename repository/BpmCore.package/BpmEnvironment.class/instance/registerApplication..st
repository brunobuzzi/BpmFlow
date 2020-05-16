applications
registerApplication: anApplication
	"The receiver register <anApplication> if other <BpmEnviroment> already have <anApplication> registered then raise <anExeception>"

	^self registerApplication: anApplication 
			ifPresent: [ApplicationWithBpmEnvironmentException signal: 'An application named [', anApplication applicationName,'] is already registered in BPM environment named [', name, ']'] 
			ifTaken: [ApplicationWithBpmEnvironmentException signal: 'The Application named [', anApplication applicationName,'] is already included in BPM environment named [', anApplication environmentName, ']']