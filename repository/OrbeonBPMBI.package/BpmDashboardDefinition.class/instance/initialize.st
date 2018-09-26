other
initialize

	super initialize.

	name := ''. 
	description := ''.
	isActive := true.
	items := OrderedCollection new.
	isPrivate := false.
	creationTime := TimeStamp now.