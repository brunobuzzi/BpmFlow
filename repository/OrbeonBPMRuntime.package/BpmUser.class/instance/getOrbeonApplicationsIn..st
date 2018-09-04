bpm environments
getOrbeonApplicationsIn: aBpmEnvrionment
	"The receiver answer a collection with all <Applications> that has a related role <aBpmRole> with the receiver"

	^(self getApplicationsIn: aBpmEnvrionment) select: [:each | each isObeonApplication]