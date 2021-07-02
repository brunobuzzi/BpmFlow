private
setApplicationUser: anApplicationUser

	centralUser := ApplicationUser new.
	roles := Set new.
	rolesAssociation := Set new.
	userOptions := BpmUserOptions new.
	inboxes := Dictionary new.
	outboxes := Dictionary new.

	"this inst var is only used to have a NxN bidirectional relation with <BpmEnvironment>"
	bpmEnvironments := RcKeyValueDictionary new.

	userGroups := Set new.

	centralUser := anApplicationUser