upload
removeImportProcessForm

	uploadProcesses removeKey: numberOfProcess ifAbsent: [].
	selectedUploads removeKey: numberOfProcess ifAbsent: [].
	processesNames removeKey: numberOfProcess ifAbsent: [].

	numberOfProcess := numberOfProcess  - 1