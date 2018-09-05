bpm environments
getVisibleRolesIn: aBpmEnvironment
	"Answer a collection of users <BpmRole> where the receiver is the admin of each role of the collection"
	| applications |

	self isBackofficeUser ifFalse: [^OrderedCollection new].

	self isBackofficeUserAndAdmin ifTrue: [^BpmRole getAllRolesIn: aBpmEnvironment].

	applications := self getApplicationsIn: aBpmEnvironment.

	^(BpmRole getAllRolesIn: aBpmEnvironment) select: [:each | applications includes: each application]