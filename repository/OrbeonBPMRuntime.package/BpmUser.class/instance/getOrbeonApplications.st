applications
getOrbeonApplications
	"The receiver answer a collection with all <Applications> that has a related role <aBpmRole> with the receiver"

	^self getApplications select: [:each | each isObeonApplication]