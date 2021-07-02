other
processInstances
	"The receiver process the unprocessed instances <OrbeonFormInstance>.	
	The instance variable <instances> is modified by various concurrent gem process"
	| processedInstances |
	
	processedInstances  := OrderedCollection new.
	instances do: [:each | 
		each buildForm.
		processedInstances add: each].

	processedInstances do: [:each | instances remove: each ifAbsent: []]