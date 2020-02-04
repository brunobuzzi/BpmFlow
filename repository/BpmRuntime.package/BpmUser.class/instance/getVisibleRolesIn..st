bpm environments
getVisibleRolesIn: aBpmEnvironment
	"Answer a collection of roles <BpmRole> where the receiver has visibility.
	If the user is not a backoffice user then answer an empty collection.
	If not answer a collection of roles that are contained in the all application accesible to the receiver"
	| applications |

	(self isBackofficeUserIn: aBpmEnvironment) ifFalse: [^OrderedCollection new].

	(self isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [^aBpmEnvironment getAllRoles].

	applications := self getApplicationsIn: aBpmEnvironment.

	^(self defaultRoleClass getAllRolesIn: aBpmEnvironment) select: [:each | applications includes: each application]