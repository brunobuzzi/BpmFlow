other
initializeCurrentSystem
	"WARNING: THIS METHOD WILL DELETE ALL ROOT OBJECTS FROM THE SYSTEM"

	AbstractApplication initializeCache.
	BpmUser initializeCache.
	BpmAvailableTasksMatrix initializeCache.
	BpmFinishedTasksMatrix initializeCache.
	BpmTakenTasksMatrix initializeCache.
	BpmBackofficeRole initializeCache.
	BpmFrontOfficeRole initializeCache.
	BpmProcessCategory initializeCache.
	BpmExceptionCalendar initializeCache.
	BpmProcessDefinition initializeCache.