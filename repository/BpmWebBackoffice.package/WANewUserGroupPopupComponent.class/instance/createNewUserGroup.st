other
createNewUserGroup
	| userGroup userGroupName description |

	userGroupName := (self componentValueAt: 'usergroup' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].
	description := (self componentValueAt: 'description' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].

	userGroup := BpmUserGroup newNamed: userGroupName.
	userGroup description: description.
	self session bpmEnvironment registerUserGroup: userGroup ifPresent: [userGroup].

	"the role has been added because #addToCacheInAppName: has answer the same role"
	parent updateUserGroup: userGroup.