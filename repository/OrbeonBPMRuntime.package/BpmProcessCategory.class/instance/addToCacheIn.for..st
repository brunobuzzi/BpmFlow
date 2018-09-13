other
addToCacheIn: aBpmEnvironment for: username
	| userCache key |

	name ifNil: [^CategoryWithNoNameException signal]. 
	username ifNil: [^CategoryWithNoNameException signal].
	name isEmpty ifTrue: [^CategoryWithNoNameException signal].	
	username isEmpty ifTrue: [^CategoryWithNoNameException signal].

	key := self class getKeyForUserNamed: username in: aBpmEnvironment.

	userCache := self class cache at: key ifAbsentPut: [Dictionary new].

	^userCache at: name put: self