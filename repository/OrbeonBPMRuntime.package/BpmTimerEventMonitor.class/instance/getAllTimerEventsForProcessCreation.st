timer start
getAllTimerEventsForProcessCreation
	"The receiver answer a collection with all <aBpmEventInstance> that start the creation of <aBpmProcessInstance>"
	| timers |

	timers := OrderedCollection new.

	self monitoredProcessDefinitions do: [:eachDictionary |
		eachDictionary do: [:eachSet | timers addAll: eachSet]].

	^timers