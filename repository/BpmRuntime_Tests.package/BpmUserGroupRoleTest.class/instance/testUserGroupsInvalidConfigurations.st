test
testUserGroupsInvalidConfigurations
	| environment1 environment2 user1 user2 newUserGroup role1 role2 |

	environment1 := self getEnvironmentNamed: 'env-1'.
	environment2 := self getEnvironmentNamed: 'env-2'.

	user1 := self getUserNamed: 'buser-1'.
	user2 := self getUserNamed: 'buser-2'.
	role1 := self getFrontofficeRoleNamed: 'app1-front-role1-1'.
	role2 := self getFrontofficeRoleNamed: 'app1-front-role1-2'.
 
	newUserGroup := BpmUserGroup newNamed: 'admins'.
	environment1 registerUserGroup: newUserGroup.
	[environment2 registerUserGroup: newUserGroup] on: ImproperBpmOperationException do: [:each | self assert: true]. "<newUserGroup> belong to <environment1>"
	self deny: (environment2 includesUserGroupNamed: newUserGroup).

	[newUserGroup addUser: user2] on: ImproperBpmOperationException do: [:ex | self assert: true]. "<user2> is not register <environment1> where <newUserGroup> belong"
	self deny: (newUserGroup includesUser: user2).

	newUserGroup addRole: role1.
	self assert: (newUserGroup includesRole: role1).

	[newUserGroup addRole: role2] on: ImproperBpmOperationException do: [:each | self assert: true].  "<role2> application is not register <environment1> where <newUserGroup> belong"
	self deny: (newUserGroup includesRole: role2).