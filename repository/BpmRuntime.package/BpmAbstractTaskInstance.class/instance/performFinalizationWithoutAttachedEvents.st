process execution
performFinalizationWithoutAttachedEvents
	"This method finalize the receiver but without finalizing receiver's <attachedEvents>.
	When an attached event <isInterrupting> then the task is finalized by the event. 
	This method is used to avoid an infinit loop because the task finalized all <attachedEvents> then the interrupting attached event finalize the task and so on ...."

	super performFinalization