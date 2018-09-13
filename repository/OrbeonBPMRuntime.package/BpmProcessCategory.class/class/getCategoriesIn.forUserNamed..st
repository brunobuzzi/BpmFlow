other
getCategoriesIn: aBpmEnvironment forUserNamed: username
	| key |

	key := self getKeyForUserNamed: username in: aBpmEnvironment.

	^(self cache at: key ifAbsent: [^OrderedCollection new])
			asSortedCollection: [:a :b | a name <= b name]