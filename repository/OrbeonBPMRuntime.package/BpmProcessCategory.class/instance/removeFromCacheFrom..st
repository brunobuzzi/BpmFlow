other
removeFromCacheFrom: username
	| userCache |

	name ifNil: [^CategoryWithNoNameException signal]. 
	username ifNil: [^CategoryWithNoNameException signal].
	name isEmpty ifTrue: [^CategoryWithNoNameException signal].	
	username isEmpty ifTrue: [^CategoryWithNoNameException signal].

	userCache := self class cache at: username ifAbsent: [^AppObjectNotInCacheException signal].

	^userCache removeKey: name ifAbsent: [^AppObjectNotInCacheException signal]