search area
renderFilterValuesAndButtonOn: html
	| processName procDef formType fieldName fieldType |

	formType := self searchValueAt: 'form-type'.
	processName := self searchValueAt: 'process-type'.
	fieldName := self searchValueAt: 'field-name'.

	procDef := self getSelectedProcessDefinitionOrNil.

	fieldType := (procDef getTypeOfFieldNamed: fieldName) ifNil: [^self renderSearchSubmitButtonOn: html]  ifNotNil: [:type | type].

	((OrderedCollection with: String with: Boolean) includes: fieldType) ifTrue: [^html div class: 'top-search-filters-one'; with: [self renderOneFilterOn: html]].

	^html div class: 'top-search-filters-two'; with: [self renderTwoFitersOn: html].