other
initializeCache
	| mainRole |

	super initializeCache.

	mainRole := self newNamed: 'admin'.
	mainRole addToCacheInAppName: 'admins';
		isAdmin: true.

	^mainRole