other
setChildrenOfInAndOutTransitions
	"This is a special case with gateways and is related to #1081.
	The in transitions of all gateways must have children transitions if not the process it appear to be always running (see BpmProcessInstance>>isAnyExecutionPathPendingToFinalize)"

	inTransitions do: [:each | each addChildrenTransitions: outTransitions].