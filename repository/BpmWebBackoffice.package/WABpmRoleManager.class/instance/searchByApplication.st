searching
searchByApplication
	| roles |

	selectedApplication ifNil: [^self].

	roles := selectedApplication getAllRoles.

	model isAdmin ifTrue: [roles := roles select: [:each | each isAdmin]].
	model isBackofficeRole ifTrue: [roles := roles select: [:each | each isBackofficeRole]].

	rolesBatchList items: roles.
	
	^roles