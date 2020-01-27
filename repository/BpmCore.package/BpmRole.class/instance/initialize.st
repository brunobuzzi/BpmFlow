other
initialize

	super initialize.

	name := ''.
	users := Dictionary new. "store the current users"
	tasks := Dictionary new.
	usersAssociations := Set new."store the historic association between the receiver and users"
	isAdmin := false.
	userGroups := Set new.