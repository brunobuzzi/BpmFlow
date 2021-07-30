forms
physicallyRemoveFormInstances
	"WARNING AFTER EXECUTING THIS METHOD THE OBJECTS ARE NOT RECOVERABLE ANY MORE"
	"This is a Time and Resource consuming Operation"
	"Remove all FormInstances where <deleted> is 'Y' "

	(root getAllInstances select: [:each | each deleted = 'Y']) do: [:each | 
		each definition removeInstance: each]