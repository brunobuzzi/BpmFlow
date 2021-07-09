environments
getAllEnvironmentsNames

	^(environments collect: [:each | each name]) asSet asArray asSortedOrderedCollection