other
defaultAction
	"The receiver pause the process where the error occurred.
	<bpmProcess> usually is <aBpmProcessInstance> but with BI module it also can be <anOrbeonFormInstance>"

	evaluationResult result: false.

	bpmProcess isBpmObject ifTrue: [bpmProcess resumeProcessWithException: self]. "no user"