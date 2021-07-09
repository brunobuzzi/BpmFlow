private
setApplicationUser: anApplicationCentralUser on: aBpmSystemRoot

	systemRoot := aBpmSystemRoot.
	roles := Set new.
	rolesAssociation := Set new.
	userOptions := BpmUserOptions new.
	inboxes := Dictionary new.
	outboxes := Dictionary new.

	"this inst var is only used to have a NxN bidirectional relation with <BpmEnvironment>"
	bpmEnvironments := RcKeyValueDictionary new.

	userGroups := Set new.

	centralUser := anApplicationCentralUser.