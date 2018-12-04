processes
pinnedProcessesIn: aBpmEnvironment
	"Answer a collection with all <BpmProcessDefinition>s pined by the user.
	Also check if the user still has grant on <BpmProcessDefinition>"
	| grantedProcs pinnedProcs |

	grantedProcs := self getCreationProcessesIn: aBpmEnvironment.
	pinnedProcs := userOptions pinnedProcessesIn: aBpmEnvironment.

	"remove pinned processes that has been ungranted for the user"
	(pinnedProcs difference: grantedProcs) do: [:each | self unpinProcess: each]. 

	^(userOptions pinnedProcessesIn: aBpmEnvironment) select: [:each | each isAvailable]