other
removeFromCacheIn: aBpmEnvironment from: username
	| userCache key |

	name ifNil: [^CategoryWithNoNameException signal]. 
	username ifNil: [^CategoryWithNoNameException signal].
	name isEmpty ifTrue: [^CategoryWithNoNameException signal].	
	username isEmpty ifTrue: [^CategoryWithNoNameException signal].

	key := self class getKeyForUserNamed: username in: aBpmEnvironment.

	userCache := self class cache at: key ifAbsent: [^AppObjectNotInCacheException signal].

	^userCache removeKey: name ifAbsent: [^AppObjectNotInCacheException signal]