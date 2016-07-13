applications
getBackofficeApplications
	"Answer a collection with all OrbeonApplications that the receiver has access in the BackOffice application"

	self isBackofficeUser ifFalse: [^OrderedCollection new].

	self isBackofficeUserAndAdmin ifTrue: [^self getApplicationsCache].

	^self getApplications