other
testRolesResponsibility2
	| process tasks gateways subProcessTasks |

	process := self getFixIssueProcess.

	tasks := #('analyze-issue' 'report-fixes' 'internal-test').
	tasks do: [:each | | isGranted |
		isGranted := (process getTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'developer'.
		self assert: isGranted].

	gateways := #('can fix').
	gateways do: [:each | | isGranted |
		isGranted := (process getGatewayNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'developer'.
		self assert: isGranted].

	subProcessTasks := #('report-to-architect').
	subProcessTasks do: [:each | | isGranted |
		isGranted := (process getSubProcessTaskNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'developer'.
		self assert: isGranted].