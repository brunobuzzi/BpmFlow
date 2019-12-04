other
initialize

	super initialize.
	
	codeWarnings := OrderedCollection new.
	infoWarnings := OrderedCollection new.
	isValidClassesEnabled := false.
	validClasses := OrderedCollection new.
	validSelectors := Dictionary new.