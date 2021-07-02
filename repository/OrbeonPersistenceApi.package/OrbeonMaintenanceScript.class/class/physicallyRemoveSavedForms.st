forms
physicallyRemoveSavedForms
	"WARNING AFTER EXECUTING THIS METHOD THE OBJECTS ARE NOT RECOVERABLE ANY MORE"
	"This is a Time and Resource consuming Operation"
	"Remove all FormInstanceDefinitions where <deleted> is 'Y' "

	(self getOrbeonApplicationClass getAllSavedDefinitions select: [:each | each deleted = 'Y']) do: [:each | 
		each getApplication removeSavedDefinition: each]