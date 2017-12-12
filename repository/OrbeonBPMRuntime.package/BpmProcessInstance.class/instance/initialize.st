other
initialize

	super initialize.

	id := Lag1MwcRandom new integer.
	currentActivities := OrderedCollection new.
	executedActivities := OrderedCollection new.
	transitions := OrderedCollection new.
	subprocesses := OrderedCollection new.
	createdTime := TimeStamp now.
	runningGateways := Dictionary new.
	executedGateways := OrderedCollection new.
	userAssignments := OrderedCollection new.
	endEvents := Dictionary new.
	executedScripts := OrderedCollection new.
	intermediateEvents := Dictionary new.
	states := OrderedCollection with: (BpmRunningState newFor: self).