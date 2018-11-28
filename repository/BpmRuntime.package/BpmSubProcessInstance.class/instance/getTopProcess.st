other
getTopProcess
	"The receiver can be a leaft process (without subprocesses) or it can be a middle process (with subprocesses).
	The receivern answer a BpmTopProcess instance at the top level"

	^parentProcess getTopProcess