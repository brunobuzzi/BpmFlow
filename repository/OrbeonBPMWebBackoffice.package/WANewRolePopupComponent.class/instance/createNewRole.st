other
createNewRole
	| roleClass newRole roleName appName application |

	appName := (self componentValueAt: 'application') ifNil: [^self] ifNotNil: [:value | value].

	application := self getApplicationManagerClass getAnyApplicationNamed: appName ifNone: [^self].

	roleClass := (self componentValueAt: 'isBackoffice') ifTrue: [BpmBackofficeRole] ifFalse: [BpmFrontOfficeRole].

	roleName := (self componentValueAt: 'rolename' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].

	newRole := roleClass createNewOrGetExisting: roleName in: appName.

	newRole isAdmin: (self componentValueAt: 'isAdmin').

	"the role has been added because #addToCacheInAppName: has answer the same role"
	parent updateRole: newRole.