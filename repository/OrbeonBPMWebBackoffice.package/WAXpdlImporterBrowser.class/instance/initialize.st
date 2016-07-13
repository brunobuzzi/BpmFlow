other
initialize

	super initialize.

	numberOfProcess := 1.
	uploadProcesses := Dictionary new.
	selectedUploads := Dictionary new.
	processesNames := Dictionary new.
	fileFormats := Dictionary new. "to check if files are well formated"