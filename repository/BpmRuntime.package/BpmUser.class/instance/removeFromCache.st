other
removeFromCache
	"The receiver is removed from the global cache"

	(self username asLowercase = self class adminUserName asLowercase) ifTrue: [ImproperBpmOperationException signal: '[admin] user can no be removed'].

	self roles do: [:eachRole | eachRole ungrantUser: self].
	rolesAssociation := Set new.

	self getBpmEnvironments do: [:eachEnv | eachEnv unregisterUser: self].
 
	^self class cache removeKey: self username ifAbsent: []