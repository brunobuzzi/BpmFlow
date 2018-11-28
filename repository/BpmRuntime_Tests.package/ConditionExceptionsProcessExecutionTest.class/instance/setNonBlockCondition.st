other
setNonBlockCondition
	| gatewayDefinition |

	gatewayDefinition := procDefinition getGatewayNamed: 'gateway split' ifNone: [self assert: false].


	gatewayDefinition outTransitions do: [:transitionDef | 
		transitionDef conditionToRun evaluationCode: '9 negated'.
	].