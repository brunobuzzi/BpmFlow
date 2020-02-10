applications
registerApplication: anApplication ifPresent: presentBlock ifTaken: takenBlock
	"The receiver register <anApplication> if other <BpmEnviroment> already have <anApplication> registered then raise <anExeception>"

	(anApplication hasBpmEnvironment and: [(anApplication bpmEnvironment == self) not]) ifTrue: [^takenBlock value].

	(applications includesKey: anApplication applicationName) ifTrue: [^presentBlock value].

	anApplication isOrbeonApplication ifTrue: [anApplication addToCache]. "see issue #1093 task 3)"

	anApplication bpmEnvironment: self. 
	^applications at: anApplication applicationName put: anApplication