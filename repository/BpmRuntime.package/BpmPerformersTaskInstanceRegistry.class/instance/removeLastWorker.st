other
removeLastWorker
	"The receiver remove the last worker (user and role).
	Used with <performers> when #untake: aBpmTaskAssignment"

	(rolesWhoWorked isEmpty or: [usersWhoWorked isEmpty]) ifTrue: [^ImproperBpmOperationException signal: 'No workers to remove'].

	rolesWhoWorked removeLast.
	usersWhoWorked removeLast.