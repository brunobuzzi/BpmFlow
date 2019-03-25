other
createNewRole
	| roleClass newRole roleName appName application |

	appName := (self componentValueAt: 'application') ifNil: [^self] ifNotNil: [:value | value].

	application := self defaultApplicationManagerClass getAnyApplicationNamed: appName ifNone: [^self].

	roleClass := (self componentValueAt: 'isBackoffice') ifTrue: [BpmBackofficeRole] ifFalse: [BpmFrontOfficeRole].

	roleName := (self componentValueAt: 'rolename' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].

	newRole := roleClass createNewOrGetExisting: roleName in: appName.

	self session user isBackofficeUserAndAdmin 
	ifTrue: [newRole isAdmin: (self componentValueAt: 'isAdmin').]
	ifFalse: [(roleClass == BpmBackofficeRole) ifTrue:[newRole isAdmin: false]]. "see issue #623 - "

	"the role has been added because #addToCacheInAppName: has answer the same role"
	parent updateRole: newRole.