bpm environments
getVisibleApplicationsIn: aBpmEnvironment
	"Answer a collection of users <BpmRole> where the receiver is the admin of each role of the collection"

	self isBackofficeUserAndAdmin ifTrue: [^(self getApplicationsCache select: [:each | each bpmEnvironment == aBpmEnvironment]) asOrderedCollection].

	^self getApplicationsIn: aBpmEnvironment