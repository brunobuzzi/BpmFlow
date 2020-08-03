other
setNonBlockCondition
	| gatewayDefinition |

	gatewayDefinition := procDefinition getGatewayNamed: 'gateway split' ifNone: [self assert: false].


	gatewayDefinition outTransitionsDo: [:transitionDef | 
		transitionDef conditionToRun evaluationCode: '9 negated'.
	].