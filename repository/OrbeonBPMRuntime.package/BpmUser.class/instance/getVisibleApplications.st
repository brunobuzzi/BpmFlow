applications
getVisibleApplications
	"Answer a collection of users <BpmRole> where the receiver is the admin of each role of the collection"

	self isBackofficeUserAndAdmin ifTrue: [^self getApplicationsCache asOrderedCollection].

	^self getApplications