other
removeLastWorker
	"The receiver remove the last worker (user and role).
	Used with <performers> when #untake: aBpmTaskAssignment"

	(rolesWhoWorked isEmpty or: [usersWhoWorked isEmpty]) ifTrue: [^self].

	rolesWhoWorked removeLast.
	usersWhoWorked removeLast.