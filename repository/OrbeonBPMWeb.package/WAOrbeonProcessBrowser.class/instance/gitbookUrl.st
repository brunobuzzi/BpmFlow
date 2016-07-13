other
gitbookUrl

	^self modeIsFinishedTasks
	ifTrue: ['https://brunobuzzi.gitbooks.io/bpm-using-orbeon-and-gemstone-s/content/finished_processes.html']
	ifFalse: ['https://brunobuzzi.gitbooks.io/bpm-using-orbeon-and-gemstone-s/content/current_processes.html']