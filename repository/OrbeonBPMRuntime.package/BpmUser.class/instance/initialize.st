other
initialize

	super initialize.

	roles := Set new.
	rolesAssociation := Set new.

	userOptions := BpmUserOptions new.

	inbox := BpmUserInbox newMainInboxFor: self.
	outbox := BpmUserOutbox newMainOutboxFor: self.

	centralUser := ApplicationUser new.