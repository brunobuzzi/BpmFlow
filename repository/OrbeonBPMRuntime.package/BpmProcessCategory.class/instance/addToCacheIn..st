other
addToCacheIn: username
	| userCache |

	name ifNil: [^CategoryWithNoNameException signal]. 
	username ifNil: [^CategoryWithNoNameException signal].
	name isEmpty ifTrue: [^CategoryWithNoNameException signal].	
	username isEmpty ifTrue: [^CategoryWithNoNameException signal].

	userCache := self class cache at: username ifAbsentPut: [Dictionary new].

	^userCache at: name put: self