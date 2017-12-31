fields update
removeFrom: formNamed fieldValue: anAppFieldValue
	"The receiver remove from Orbeon form named <formNamed> the field value <anAppFieldValue>.
	The receiver holds a Dictionary with all form's name. Each form's name Dictionary is a Dictionary of fields's name. The value at a given field's name is anUnorderedCollection.
	(formName)>>(fieldName)>>(anUnorderedCollection)"
	| fieldsDictionary fieldCollection |

	fieldsDictionary := (formFieldInstances includesKey: formNamed) 
		ifTrue: [formFieldInstances at: formNamed]
		ifFalse: [^NoFormNameCollectionException signal: 'No Form collection for form named [', formNamed, ']'].

	fieldCollection := (fieldsDictionary includesKey: anAppFieldValue getKeyName)
		ifTrue: [fieldsDictionary at: anAppFieldValue getKeyName]
		ifFalse: [^NoFieldNameCollectionException signal: 'No Field collection for field named [', anAppFieldValue getKeyName, ']'].

	^fieldCollection 
		remove: anAppFieldValue 
		ifAbsent: [NoFieldValueFoundException signal: 'No App Field Value found in form named [', formNamed, '] for field named [', anAppFieldValue getKeyName, ']' ]