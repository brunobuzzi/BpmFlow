bpm environments
getBackofficeApplicationsIn: aBpmEnvironment
	"Answer a collection with all <Application>s that the receiver has access in the BackOffice application in the environment <aBpmEnvironment>"

	(self isBackofficeUserIn: aBpmEnvironment) ifFalse: [^OrderedCollection new].

	(self isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [^aBpmEnvironment applicationsAsSortedCollection].

	^self getApplicationsIn: aBpmEnvironment