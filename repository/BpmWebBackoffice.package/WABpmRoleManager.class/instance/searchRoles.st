searching
searchRoles
	| roles |

	selectedObject := nil.

	model name notEmpty ifTrue: [^self searchByName].

	selectedApplication ifNotNil: [^self searchByApplication].

	roles :=  self session user getVisibleRolesIn: self session bpmEnvironment.

	model isAdmin ifTrue: [roles := roles select: [:each | each isAdmin]].
	model isBackofficeRole ifTrue: [roles := roles select: [:each | each isBackofficeRole]].

	rolesBatchList items: roles.
	
	^roles