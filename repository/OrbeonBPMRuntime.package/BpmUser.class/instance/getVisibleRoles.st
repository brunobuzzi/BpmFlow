roles
getVisibleRoles
	"Answer a collection of users <BpmRole> where the receiver is the admin of each role of the collection"
	| orbeonApplications |

	self isBackofficeUser ifFalse: [^OrderedCollection new].

	self isBackofficeUserAndAdmin ifTrue: [^BpmRole getAllRoles].

	orbeonApplications := self getApplications.

	^BpmRole getAllRoles select: [:each | orbeonApplications includes: each application]