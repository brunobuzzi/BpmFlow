other
getActivityNodeWithId: stringId

	^self activities detect: [:each | each isActivityNode and: [each getId = stringId]] ifNone: [nil]