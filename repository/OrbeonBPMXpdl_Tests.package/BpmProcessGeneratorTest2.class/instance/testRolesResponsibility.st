other
testRolesResponsibility
	| process tasks |

	process := self getScriptProcess.
	
	tasks := #('script').
	tasks do: [:each | | isGranted |
		isGranted := (process getScriptNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'manager'.
		self assert: isGranted].