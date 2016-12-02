upload
removeImportProcessForm

	uploadProcesses removeKey: numberOfProcess ifAbsent: [].
	selectedUploads removeKey: numberOfProcess ifAbsent: [].

	(numberOfProcess > 1) ifTrue: [numberOfProcess := numberOfProcess - 1].