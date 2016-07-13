search area
getFormDefinitionList
	| allFormsNames |

	allFormsNames := OrderedCollection new.

	lateralCollection do: [:each | allFormsNames addAll: each getTaskNames].

	^self viewAllArray, allFormsNames asSet asSortedCollection

"	^#('-View All-'), (allFormsNames asSet asSortedCollection) "