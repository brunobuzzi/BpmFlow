other
getDescriptionItems

	^super getDescriptionItems
		at: 'Form:' put: formName;
		at: 'Field:' put: fieldName;
		at: 'Secondary Field:' put: secondaryField;
		yourself