instantiation
createProcessInstance: aBpmUser
	"Create a new process instance based on the receiver if the user <aBpmUser> does not have creation permission throw an exception.
	The new process can be a main process or a subprocess <BpmMainProcessInstance> <BpmSubProcessInstance>"
	| newProcess |

	(self canCreateProcessInstance: aBpmUser) ifFalse: [^self throwNoCreationPermissionExceptionFor: aBpmUser username].

	newProcess := self getProcessInstanceClass newBasedOn: self user: aBpmUser.

	self addProcessInstance: newProcess. "add the new process instance dictionary"

	^newProcess