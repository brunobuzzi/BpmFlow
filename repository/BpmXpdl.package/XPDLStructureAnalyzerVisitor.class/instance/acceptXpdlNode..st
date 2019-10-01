xpdl top elements
acceptXpdlNode: aXPDLObject

	"check repeated names in different artifacts"
	(aXPDLObject isTransitionNode not and: [(xpdlObjects includesKey: aXPDLObject getName) and: [((xpdlObjects at: aXPDLObject getName) == aXPDLObject) not]])
	ifTrue: [self addRepeatedNameItemFor: aXPDLObject].

	"transition nodes can have no names and can have the same name as an activity"
	(aXPDLObject isTransitionNode) ifFalse: [xpdlObjects at: aXPDLObject getName put: aXPDLObject].

	(aXPDLObject hasMixedStartConditions) ifTrue: [self addActivityWithMixedConditionsItem: aXPDLObject].

	"detect unsupported artifacts"
	(aXPDLObject isMessageNode and: [aXPDLObject isAttached]) ifTrue: [self addUnsupportedAttachedMessageEventItem: aXPDLObject].
	(aXPDLObject isBusinessRuleTaskNode) ifTrue: [self addUnsupportedBusinessRuleTasktItem: aXPDLObject].
	(aXPDLObject isCompensationNode) ifTrue: [self addUnsupportedCompensationEventItem: aXPDLObject].
	(aXPDLObject isComplexGateway) ifTrue: [self addUnsupportedComplexGatewayItem: aXPDLObject].
	(aXPDLObject isConditionalNode) ifTrue: [self addUnsupportedConditionalEventItem: aXPDLObject].
	"(aXPDLObject isErrorNode) ifTrue: [self addUnsupportedErrorEventItem]."
	(aXPDLObject isEscalationNode) ifTrue: [self addUnsupportedEscalationEventItem: aXPDLObject].
	(aXPDLObject isManualTaskNode) ifTrue: [self addUnsupportedManualTaskItem: aXPDLObject].
	(aXPDLObject isMultipleNode) ifTrue: [self addUnsupportedMultipleEventItem: aXPDLObject].
	(aXPDLObject isParallelMultipleNode) ifTrue: [self addUnsupportedParallelMultipleEventItem: aXPDLObject].
	(aXPDLObject isTaskReceiveNode) ifTrue: [self addUnsupportedReceiveTaskItem: aXPDLObject].
	(aXPDLObject isServiceTaskNode) ifTrue: [self addUnsupportedServiceTaskItem: aXPDLObject].
	(aXPDLObject isSignalNode) ifTrue: [self addUnsupportedSignalEventItem: aXPDLObject].
	(aXPDLObject isUserTaskNode) ifTrue: [self addUnsupportedUserTaskItem: aXPDLObject]