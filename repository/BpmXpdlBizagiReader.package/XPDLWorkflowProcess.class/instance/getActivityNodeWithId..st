other
getActivityNodeWithId: stringId

	^self activitiesDetect: [:each | each isActivityNode and: [each getId = stringId]] ifNone: [nil]