other
initialize

	super initialize.

	id := Lag1MwcRandom new integer.
	executionPath := BpmProcessPathDefinition newForDefinition: self.
	roles := Dictionary new.
	participants := Dictionary new.
	version := 1.
	subProcesses := Dictionary new.
	processInstances := RcKeyValueDictionary new.
	formFieldInstances := Dictionary new.
	abortedProcesses := RcIdentityBag new.
	assignationPolicy := BpmNoneAssignationPolicy newOn: self.
	isImmutable := false.
	processInstancesSet := RcIdentityBag new.