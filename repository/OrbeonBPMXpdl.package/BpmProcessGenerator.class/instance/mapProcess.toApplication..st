process definition creation
mapProcess: procNamed toApplication: anOrbeonApplication
	"The receiver map the BpmProcessDefinition named <procNamed> with the <OrbeonApplication> named <appName>"

	^processesMapping at: procNamed put: anOrbeonApplication