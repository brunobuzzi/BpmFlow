other
searchUsername
	| username |

	selectedObject := nil.
	searchCollectionResult := OrderedCollection new.

	username := searchValues at: 'username' ifAbsent: ''.

	usersBatchedList items: ((self session user getVisibleUsersIn: self session bpmEnvironment) select: [:each | username match: each username]).