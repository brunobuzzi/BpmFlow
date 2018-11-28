execution
triggerStartEventWith: aBpmUserOrNil
	"The receiver start to run it self by finding the outgoing transition of the start event <BpmStartEventInstance>.
	The event instance is set with the trigger <aBpmUserOrNil>"

	startEvent := BpmStartEventInstance newBasedOn: definition startEvent inProcess: self.
	startEvent trigger: aBpmUserOrNil.

	self generateNextTransitionsFrom: startEvent.