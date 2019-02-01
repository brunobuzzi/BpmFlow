buttons
cloneSelectedInternationalization: aBpmEnvironment

	selectedEnvironment ifNil: [^self].
 
	^aBpmEnvironment internationalization: selectedEnvironment internationalization clone