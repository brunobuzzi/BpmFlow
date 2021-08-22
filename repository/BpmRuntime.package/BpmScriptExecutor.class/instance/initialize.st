other
initialize

	super initialize.

	scriptsToExecute := RcIdentityBag new.
	runningScripts := RcIdentityBag new.
	executedScripts := RcIdentityBag new.