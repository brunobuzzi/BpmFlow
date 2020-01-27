groups
removeGroup: aBpmUserGroup

	^userGroups remove: aBpmUserGroup ifAbsent: [NoUserGroupException signal:  'The user group [', aBpmUserGroup name ,'] does not includes the role [', name, ']']