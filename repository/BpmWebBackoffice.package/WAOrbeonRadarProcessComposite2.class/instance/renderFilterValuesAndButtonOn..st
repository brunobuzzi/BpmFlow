search area
renderFilterValuesAndButtonOn: html
	| procDef fieldType |

	procDef := self getProcessDefinitionOrNil.
	procDef ifNil: [^self].

	fieldType := (procDef getTypeOfFieldNamed: self getSelectedFormField) ifNil: [^self renderOneFilterOn: html]  ifNotNil: [:type | type].

	((OrderedCollection with: String with: Boolean) includes: fieldType) ifTrue: [^self renderOneFilterOn: html].

	^self renderTwoFitersOn: html