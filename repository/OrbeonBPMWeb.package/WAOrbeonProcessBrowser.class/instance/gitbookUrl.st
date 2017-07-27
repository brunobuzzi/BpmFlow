other
gitbookUrl

	^self modeIsFinishedTasks
	ifTrue: [self getGemStoneServerConfiguration baseUrlDocumentation, 'finished_processes.html']
	ifFalse: [self getGemStoneServerConfiguration baseUrlDocumentation, 'current_processes.html']