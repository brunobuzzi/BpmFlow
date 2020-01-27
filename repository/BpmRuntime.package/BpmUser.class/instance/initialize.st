other
initialize

	super initialize.

	centralUser := ApplicationUser new.
	roles := Set new.
	rolesAssociation := Set new.
	userOptions := BpmUserOptions new.
	inboxes := Dictionary new.
	outboxes := Dictionary new.

	"this inst var is only used to have a NxN bidirectional relation with <Bpmenvironment>"
	bpmEnvironments := RcKeyValueDictionary new.

	userGroups := Set new.