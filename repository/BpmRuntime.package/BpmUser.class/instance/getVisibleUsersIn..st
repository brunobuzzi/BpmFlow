bpm environments
getVisibleUsersIn: aBpmEnvironment
	"Answer a collection of users <BpmUser> where the receiver is the admin of each user of the collection"
	| applications |

	(self isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [^aBpmEnvironment usersAsOrderedCollection].

	(self isBackofficeUserIn: aBpmEnvironment) ifFalse: [^Dictionary new].

	applications := self getApplicationsIn: aBpmEnvironment.

	^self class cache select: [:each | each includesAnyApplicationOf: applications in: aBpmEnvironment]