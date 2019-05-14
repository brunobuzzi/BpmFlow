other
getDefinitionNameForUrl

	definition hasExternalObjectReuse ifFalse: [^definition name].

	^definition reuseExternalObjectOfTaskNamed