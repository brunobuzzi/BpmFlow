other
createNewRole
	| roleClass newRole roleName appName application |

	appName := (self componentValueAt: 'application') ifNil: [^self] ifNotNil: [:value | value].

	application := self defaultApplicationManagerClass applicationNamed: appName ifNone: [^self].

	roleClass := (self componentValueAt: 'isBackoffice') ifTrue: [self defaultBackOfficeRoleClass] ifFalse: [self defaultFrontOfficeRoleClass].

	roleName := (self componentValueAt: 'rolename' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].

	newRole := roleClass createNewOrGetExisting: roleName in: appName.

	(self session user isBackofficeUserAndAdminIn: self session bpmEnvironment) 
	ifTrue: [newRole isAdmin: (self componentValueAt: 'isAdmin').]
	ifFalse: [(roleClass == self defaultBackOfficeRoleClass) ifTrue:[newRole isAdmin: false]]. "see issue #623 - "

	"the role has been added because #addToCacheInAppName: has answer the same role"
	parent updateRole: newRole.