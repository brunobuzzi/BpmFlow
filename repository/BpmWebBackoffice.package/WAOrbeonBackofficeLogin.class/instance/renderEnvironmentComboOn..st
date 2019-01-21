other
renderEnvironmentComboOn: html

	self defaultEnvironmentClass areUsersMultiEnvironment ifTrue: [^super renderEnvironmentComboOn: html].

	"at this point the user is already logged and it is an admin and its environments are already known"

	self renderEnvironmentComboOn: html for: (adminUser bpmEnvironments collect: [:each | each name]) asSortedCollection