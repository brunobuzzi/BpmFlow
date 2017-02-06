other
moveFromCurrentToExecuted: anAdHocStepInstance
	"The receiver move the current step <anAdHocStepInstance> from <currentSteps> collection to <executedSteps> collection."

	currentSteps remove: anAdHocStepInstance ifAbsent: [^self throwNoSuchStepException: anAdHocStepInstance].

	executedSteps add: anAdHocStepInstance