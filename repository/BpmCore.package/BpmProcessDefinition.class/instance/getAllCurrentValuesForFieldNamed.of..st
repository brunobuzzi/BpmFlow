other
getAllCurrentValuesForFieldNamed: fieldName of: formName
	| fieldCollection values |

	values := Set new.
	fieldCollection := (formFieldInstances at: formName ifAbsent: [^#()]) at: fieldName ifAbsent: [#()].
	fieldCollection do: [:each | values add: each value].

	^values