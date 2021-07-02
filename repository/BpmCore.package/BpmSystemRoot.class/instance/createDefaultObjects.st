system setUp
createDefaultObjects
	| defaultEnvironment application |

	defaultEnvironment := BpmEnvironment newNamed: self adminsEnvironmentName on: self.
	defaultEnvironment addDefaultCalendar.

	application := BpmApplication getExistingApplicationOrCreateNewNamed: self adminsApplicationName on: self.
	application initializeForBpmFlow.