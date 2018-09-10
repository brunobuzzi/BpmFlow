other
initialize

	super initialize.

	roles := Set new.
	rolesAssociation := Set new.

	userOptions := BpmUserOptions new.

	inbox := BpmUserInbox newMainInboxFor: self.
	outbox := BpmUserOutbox newMainOutboxFor: self.
	inboxes := Dictionary new.
	outboxes := Dictionary new.

	centralUser := ApplicationUser new.