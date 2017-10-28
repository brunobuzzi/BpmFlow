process execution
finalize

	super finalize.

	attachedEvents do: [:event | event finalize].