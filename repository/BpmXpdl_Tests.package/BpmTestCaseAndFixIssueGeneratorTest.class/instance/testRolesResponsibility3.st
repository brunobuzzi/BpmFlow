other
testRolesResponsibility3
	| process tasks gateways |

	process := self getArchitectProcess.

	tasks := #('analyze-developer-report' 'report-solution' 'report-workaround').
	tasks do: [:each | | isGranted |
		isGranted := (process getTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'architect'.
		self assert: isGranted].

	gateways := #('has-solution').
	gateways do: [:each | | isGranted |
		isGranted := (process getGatewayNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'architect'.
		self assert: isGranted].