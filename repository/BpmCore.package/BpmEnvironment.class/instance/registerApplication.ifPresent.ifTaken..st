applications
registerApplication: anApplication ifPresent: presentBlock ifTaken: takenBlock
	"The receiver register <anApplication> if other <BpmEnviroment> already have <anApplication> registered then raise <anExeception>"

	anApplication hasBpmEnvironment ifTrue: [^takenBlock value].

	(applications includesKey: anApplication applicationName) ifTrue: [^presentBlock value].

	anApplication bpmEnvironment: self. 
	^applications at: anApplication applicationName put: anApplication