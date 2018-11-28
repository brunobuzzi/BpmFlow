other
gitbookUrl

	^self modeIsFinishedTasks
	ifTrue: [self getGemStoneServerConfiguration baseUrlDocumentation, '/application-manuals/frontoffice-manual/main-menu/my-processes/finished-processes']
	ifFalse: [self getGemStoneServerConfiguration baseUrlDocumentation, '/application-manuals/frontoffice-manual/main-menu/my-processes/current-processes']