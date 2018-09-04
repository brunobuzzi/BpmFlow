bpm environments
getOrbeonBackofficeApplicationsIn: aBpmEnvironment
	"Answer a collection with all OrbeonApplications that the receiver has access in the BackOffice application"

	self isBackofficeUser ifFalse: [^OrderedCollection new].

	self isBackofficeUserAndAdmin ifTrue: [^self getOrbeonCache select: [:each | each bpmEnvironment == aBpmEnvironment]].

	^self getOrbeonApplications select: [:each | each bpmEnvironment == aBpmEnvironment]