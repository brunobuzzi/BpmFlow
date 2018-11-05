other
initialize

	super initialize.

	applications := OrderedCollection new.
	indexApplicationMapper := Dictionary new.
	indexXpdlFileMapper := Dictionary new.
	fileFormatErrors := Dictionary new.