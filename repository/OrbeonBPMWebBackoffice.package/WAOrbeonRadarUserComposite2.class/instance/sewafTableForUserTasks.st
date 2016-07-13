other
sewafTableForUserTasks

	listType = 'Finished Tasks' ifTrue: [
		batchedList navigationCssClass: 'batch-div-bottom'. "the finished tasks list does NOT have buttons --> the style is changed"
		^self sewafTableForFinishedTasks].

	batchedList navigationCssClass: 'batch-div-bottom-with-button'. "the following list does HAVE buttons --> the style is changed"

	(listType = 'Current Tasks') ifTrue: [^self sewafTableForTasks].

	(listType = 'Possible Tasks') ifTrue: [^self sewafTableForTasks].