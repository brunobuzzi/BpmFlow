*bpmwebbasic
renderEnvironmentComboOn: html

	self defaultEnvironmentClass areUsersMultiEnvironment 
	ifTrue: [self renderEnvironmentComboOn: html for: (#(''), (BpmEnvironment cache collect: [:each | each name]) asSet asArray) asSortedCollection]
	ifFalse: [self renderEnvironmentComboOn: html for: (user bpmEnvironments collect: [:each | each name]) asSortedCollection]