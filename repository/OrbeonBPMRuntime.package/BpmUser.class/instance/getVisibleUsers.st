roles
getVisibleUsers
	"Answer a collection of users <BpmUser> where the receiver is the admin of each user of the collection"
	| applications |

	self isBackofficeUser ifFalse: [^Dictionary new].

	self isBackofficeUserAndAdmin ifTrue: [^BpmUser cache].

	applications := self getApplications.

	^BpmUser cache select: [:each | each includesAnyApplicationOf: applications]