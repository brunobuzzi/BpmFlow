other
initialize

	super initialize.

	roles := Set new.
	rolesAssociation := Set new.

	userOptions := BpmUserOptions new.

	inboxes := Dictionary new.
	outboxes := Dictionary new.

	centralUser := ApplicationUser new.