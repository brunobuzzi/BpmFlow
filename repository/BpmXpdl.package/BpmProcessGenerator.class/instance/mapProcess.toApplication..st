process definition creation
mapProcess: procNamed toApplication: anApplication
	"The receiver map the BpmProcessDefinition named <procNamed> with the <OrbeonApplication> named <appName>"

	^processesMapping at: procNamed put: anApplication