forms
physicallyRemovePublishedForms
	"WARNING AFTER EXECUTING THIS METHOD THE OBJECTS ARE NOT RECOVERABLE ANY MORE"
	"This is a Time and Resource consuming Operation"
	"Remove all FormDefinitions where <deleted> is 'Y' "

	(self getOrbeonApplicationClass getAllFormDefinitions select: [:each | each deleted = 'Y']) do: [:each | 
		each getApplication removeDefinition: each]