other
addAdminUser
	| user role |

	BpmApplication basicInitializeCache.
	BpmApplication applicationNamed: 'admins' ifNone: [(BpmApplication newNamed: 'admins') addToCache].
	
	user := self newUsername: 'admin' password: 'admin'.

	role := BpmBackofficeRole createNewOrGetExisting: 'admin' in: 'admins'.
	role isAdmin: true. 

	role grantUser: user.