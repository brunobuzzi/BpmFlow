groups
unregisterFromGroup: aBpmUserGroup

	^userGroups remove: aBpmUserGroup ifAbsent: [NoUserGroupException signal:  'The user group [', aBpmUserGroup name ,'] does not have the user [', self username, ']']