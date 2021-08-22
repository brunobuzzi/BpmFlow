other
gitbookUrl

	^self modeIsFinishedTasks
	ifTrue: [self session systemRoot baseUrlDocumentation, '/application-manuals/frontoffice-manual/main-menu/my-processes/finished-processes']
	ifFalse: [self session systemRoot baseUrlDocumentation, '/application-manuals/frontoffice-manual/main-menu/my-processes/current-processes']