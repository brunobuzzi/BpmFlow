other
setNonBooleanCondition
	| gatewayDefinition |

	gatewayDefinition := procDefinition getGatewayNamed: 'gateway split' ifNone: [self assert: false].


	gatewayDefinition outTransitions do: [:transitionDef | 
		transitionDef conditionToRun evaluationCode: '[:proc | proc amount]'.
	].