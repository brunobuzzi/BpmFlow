render
renderFilterValuesAndButtonOn: html
	| processName procDef formType fieldName fieldType |

	formType := self searchValueAt: 'form-type'.
	processName := self searchValueAt: 'process-type'.
	fieldName := self searchValueAt: 'field-name'.

	procDef := self getSelectedProcessDefinitionOrNil.

	fieldType := (procDef getTypeOfFieldNamed: fieldName) ifNil: [^self renderSearchSubmitButtonOn: html]  ifNotNil: [:type | type].

	^html div class: 'top-search-filters-one'; with: [self renderOneFilterOn: html].