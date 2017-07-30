other
initialize

	super initialize.

	"used for <BpmProcessDefinition> that have a Timer on the StartEvent [a new <BpmProcessInstance> is created each X time]"
	"in this collection the <BpmProcessDefinition> are NOT removed (the only exception is when the <BpmProcessDefinition> is removed from the System)"
	monitoredProcessDefinitions := Dictionary new.

	"used for <BpmProcessInstance> with Timer on an IntermediateEvent [a new <BpmActivityInstance> is created each X time] "
	"each time a <BpmProcessInstance> is finished then the process instance is removed from this collection"
	"while iterating over the collection if a <BpmProcessInstance> is finished the is removed in that moment"
	monitoredProcessInstances := Dictionary new.

	"all executed TimerEvents"
	eventsHistory := Dictionary new.