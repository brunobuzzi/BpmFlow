import checks
getNonExistingFormNamesIn: anOrbeonApplication
	"Answer a collection with the names of the forms that are defined in the XPDL but not defined in the system.

	Right now only checks for OrbeonApplication, but must work with general Application (subclass of AbstractApplication)"

	^((activities reject: [:each | each isGatewayNode])
		reject: [:each | (anOrbeonApplication hasDefinitionNamed: each getName) 
															or:[each isEventNode or:[each isSubProcessNode]]])
			collect: [:each | each getName]