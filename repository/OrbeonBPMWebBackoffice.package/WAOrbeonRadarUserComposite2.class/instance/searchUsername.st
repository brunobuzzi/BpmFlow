other
searchUsername
	| username |

	selectedObject := nil.
	searchCollectionResult := OrderedCollection new.

	username := searchValues at: 'username' ifAbsent: ''.

	usersBatchedList items: (self session user getVisibleUsers select: [:each | username match: each username]).