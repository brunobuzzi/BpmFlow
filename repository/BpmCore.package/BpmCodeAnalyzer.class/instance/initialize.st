other
initialize

	super initialize.
	
	codeWarnings := OrderedCollection new.
	infoWarnings := OrderedCollection new.
	isValidClassesEnabled := false.
	validClasses := OrderedCollection new.
	isValidSelectorsEnabled := false.
	validSelectors := Dictionary new.