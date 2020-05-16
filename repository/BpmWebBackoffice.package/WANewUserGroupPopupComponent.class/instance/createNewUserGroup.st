other
createNewUserGroup
	| userGroup userGroupName description |

	userGroupName := (self componentValueAt: 'usergroup' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].
	description := (self componentValueAt: 'description' ifAbsent: [^self]) ifNotEmpty: [:value | value] ifEmpty: [^self].

	userGroup := self session bpmEnvironment createNewOrGetExistingUserGroup: userGroupName.

	"the role has been added because #addToCacheInAppName: has answer the same role"
	parent updateRole: userGroup.