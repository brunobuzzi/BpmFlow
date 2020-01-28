bpm environments
getOrbeonBackofficeApplicationsIn: aBpmEnvironment
	"Answer a collection with all OrbeonApplications that the receiver has access in the BackOffice application"

	(self isBackofficeUserIn: aBpmEnvironment) ifFalse: [^OrderedCollection new].

	(self isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [^self getOrbeonCache select: [:each | each bpmEnvironment == aBpmEnvironment]].

	^self getOrbeonApplicationsIn: aBpmEnvironment