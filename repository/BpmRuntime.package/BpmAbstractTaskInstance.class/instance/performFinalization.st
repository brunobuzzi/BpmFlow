process execution
performFinalization

	super performFinalization.

	attachedEvents do: [:event | event performFinalization].