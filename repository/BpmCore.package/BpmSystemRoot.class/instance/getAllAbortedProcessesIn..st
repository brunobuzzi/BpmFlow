bpm processes
getAllAbortedProcessesIn: aBpmEnvironment
	"The receiver answer a collection with all aborted processes"
	| all |

	all := OrderedCollection new.
	aBpmEnvironment getAllProcessDefinitions do: [:eachProcDef | eachProcDef abortedProcessesDo: [:each | all add: each]]. 
	^all