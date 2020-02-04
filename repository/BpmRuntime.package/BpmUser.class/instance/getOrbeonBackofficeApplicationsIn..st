bpm environments
getOrbeonBackofficeApplicationsIn: aBpmEnvironment
	"Answer a collection with all OrbeonApplications that the receiver has access in the BackOffice application"

	(self isBackofficeUserIn: aBpmEnvironment) ifFalse: [^OrderedCollection new].

	(self isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [^aBpmEnvironment getOrbeonApplications].

	^self getOrbeonApplicationsIn: aBpmEnvironment