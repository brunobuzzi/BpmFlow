other
getAllVersions
	| allVersions |

	allVersions := OrderedCollection new.
	application allVersionsOf: definition formName do: [:each | allVersions add: each].

	^allVersions