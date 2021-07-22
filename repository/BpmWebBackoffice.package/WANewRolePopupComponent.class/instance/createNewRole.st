other
createNewRole
	| newRole roleName appName application |

	appName := (self componentValueAt: 'application') ifNil: [^self] ifNotNil: [:value | value].

	application := self session systemRoot applicationNamed: appName ifNone: [^self].

	roleName := (self componentValueAt: 'rolename' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].

	newRole := (self componentValueAt: 'isBackoffice') 
						ifTrue: [self session systemRoot createNewOrGetExistingBackOfficeRole: roleName in: appName] 
						ifFalse: [self session systemRoot createNewOrGetExistingFrontOfficeRole: roleName in: appName].

	(self session user isBackofficeUserAndAdminIn: self session bpmEnvironment) 
	ifTrue: [newRole isAdmin: (self componentValueAt: 'isAdmin').]
	ifFalse: [newRole isBackofficeRole ifTrue:[newRole isAdmin: false]]. "see issue #623 - "

	"the role has been added because #addToCacheInAppName: has answer the same role"
	parent updateRole: newRole.