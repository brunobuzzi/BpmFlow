bpm environments
getVisibleApplicationsIn: aBpmEnvironment
	"Answer a collection of users <BpmRole> where the receiver is the admin of each role of the collection"

	(self isBackofficeUserAndAdminIn: aBpmEnvironment) 
	ifTrue: [^aBpmEnvironment applications asOrderedCollection].

	^self getApplicationsIn: aBpmEnvironment