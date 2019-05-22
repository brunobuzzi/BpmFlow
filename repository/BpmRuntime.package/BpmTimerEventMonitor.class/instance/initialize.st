other
initialize

	super initialize.

	"used for <BpmProcessDefinition> that have a Timer on the StartEvent [a new <BpmProcessInstance> is created each X time]"
	"in this collection the <BpmProcessDefinition> are NOT removed (the only exception is when the <BpmProcessDefinition> is removed from the System)"
	monitoredProcessDefinitions := Dictionary new.

	"all executed TimerEvents"
	processesCreationEventHistory := Dictionary new.

	monitoredEvents := RcIdentityBag new.