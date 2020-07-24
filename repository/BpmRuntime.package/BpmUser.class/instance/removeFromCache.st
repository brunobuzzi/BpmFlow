other
removeFromCache
	"The receiver is removed from the global cache"

	self isAdminUser ifTrue: [ImproperBpmOperationException signal: '[admin] user can no be removed'].

	self rolesDo: [:eachRole | eachRole ungrantUser: self].
	rolesAssociation := Set new.

	self getBpmEnvironments do: [:eachEnv | eachEnv unregisterUser: self].
 
	^self class cache removeKey: self username ifAbsent: []