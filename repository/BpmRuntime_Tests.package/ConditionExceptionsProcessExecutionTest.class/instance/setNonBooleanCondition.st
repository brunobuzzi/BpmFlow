other
setNonBooleanCondition
	| gatewayDefinition |

	gatewayDefinition := procDefinition getGatewayNamed: 'gateway split' ifNone: [self assert: false].


	gatewayDefinition outTransitionsDo: [:transitionDef | 
		transitionDef conditionToRun evaluationCode: '[:proc | proc amount]'.
	].