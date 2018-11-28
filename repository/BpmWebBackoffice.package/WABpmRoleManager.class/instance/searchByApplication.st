searching
searchByApplication
	| roles |

	selectedApplication ifNil: [^self].

	roles := BpmRole getRolsIn: self session bpmEnvironment forApplication: selectedApplication.

	model isAdmin ifTrue: [roles := roles select: [:each | each isAdmin]].
	model isBackofficeRole ifTrue: [roles := roles select: [:each | each isBackofficeRole]].

	rolesBatchList items: roles.
	
	^roles