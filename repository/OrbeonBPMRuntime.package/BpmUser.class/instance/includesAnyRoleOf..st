roles
includesAnyRoleOf: aCollection

	^roles anySatisfy: [:each | aCollection includesIdentical: each]