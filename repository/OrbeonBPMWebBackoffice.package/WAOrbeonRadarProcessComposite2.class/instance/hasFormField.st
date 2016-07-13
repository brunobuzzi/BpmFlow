other
hasFormField

	^(searchValues includesKey: 'form-field') and: [(searchValues at: 'form-field') notEmpty]