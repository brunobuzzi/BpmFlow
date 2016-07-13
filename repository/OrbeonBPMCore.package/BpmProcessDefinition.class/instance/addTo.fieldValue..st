fields update
addTo: formNamed fieldValue: anAppFieldValue
	"The receiver add to Orbeon form named <formNamed> the field value <anAppFieldValue>.
	The receiver holds a Dictionary with all form's name. Each form's name Dictionary is a Dictionary of fields's name. The value at a given field's name is anUnorderedCollection.
	(formName)>>(fieldName)>>(anUnorderedCollection)"
	| fieldsDictionary fieldCollection |

	fieldsDictionary := (formFieldInstances includesKey: formNamed) "we get the dictionary for the form named <formNamed>"
		ifTrue: [formFieldInstances at: formNamed]
		ifFalse: [formFieldInstances at: formNamed put: Dictionary new].

	fieldCollection := (fieldsDictionary includesKey: anAppFieldValue getKeyName) "we get the Rc collection for the proper field"
		ifTrue: [fieldsDictionary at: anAppFieldValue getKeyName]
		ifFalse: [fieldsDictionary at: anAppFieldValue getKeyName put: RcIdentityBag new].

	^fieldCollection add: anAppFieldValue