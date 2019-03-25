bpm environments
getVisibleUsersIn: aBpmEnvironment
	"Answer a collection of users <BpmUser> where the receiver is the admin of each user of the collection"
	| applications |

	self isBackofficeUser ifFalse: [^Dictionary new].

	self isBackofficeUserAndAdmin ifTrue: [^self class cache select: [:each | each hasAccessTo: aBpmEnvironment]].

	applications := self getApplicationsIn: aBpmEnvironment.

	^self class cache select: [:each | each includesAnyApplicationOf: applications in: aBpmEnvironment]