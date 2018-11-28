execution
confirmAbortion
	"The receiver confirm the abortion state <BpmAbortedState>.
	Be careful because ALL processes Tree is aborted"
	| subProcToAbort |

	self currentState isConfirmed: true. 
	self currentState confirmAbortion.

	"here we proceed to abort all sub process"
	subProcToAbort := self getProcessesTreeAsCollection.
	subProcToAbort remove: self. "the tree collection includes the receiver that already has been aborted"

	subProcToAbort do: [:procInst | 
		procInst abortProcess: nil. 
		procInst currentState isConfirmed: true.
		procInst currentState confirmAbortion.
	]