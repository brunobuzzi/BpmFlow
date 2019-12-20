instantiation
canCreateProcessInstance: aBpmUser
	"Answer whether or not the user <aBpmUser> can create a process instance of the receiver"

	^executionPath canCreateProcess: aBpmUser