other
initialize

	super initialize.

	successfulImport := false.
	processes := Dictionary new.
	participants := OrderedCollection new.
	processesMapping := Dictionary new. "each key is a process name and each value is a valid OrbeonApplication name"
	failedImportProcesses := OrderedCollection new.