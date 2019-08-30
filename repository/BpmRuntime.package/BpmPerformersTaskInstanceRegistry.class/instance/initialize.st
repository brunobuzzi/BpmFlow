other
initialize

	super initialize.

	finalizedPerformerCounter := 0. "used with performers only (is 0 for task without performers)"

	rolesWhoWorked := OrderedCollection new.

	usersWhoWorked := OrderedCollection new.