bpm environments
getBackofficeApplicationsIn: aBpmEnvironment
	"Answer a collection with all <Application>s that the receiver has access in the BackOffice application in the environment <aBpmEnvironment>"

	self isBackofficeUser ifFalse: [^OrderedCollection new].

	self isBackofficeUserAndAdmin ifTrue: [^self getApplicationsCache select: [:each | each bpmEnvironment == aBpmEnvironment]].

	^self getApplicationsIn: aBpmEnvironment