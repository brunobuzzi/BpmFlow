performers
addWorkerUser: aBpmUser
	"The receiver update it's task adding the user <aBpmUser> as the current user with the current role of the task "
	| workerRole |

	workerRole := self getNextRoleIfNone: [^nil].

	task addWorkerUser: aBpmUser as: workerRole.