tests
testRolesResponsibility
	| process tasks subProc isGranted |

	process := self getTopProcess.
	
	tasks := #('script').
	tasks do: [:each | 
		isGranted := (process getScriptNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'administrator'.
		self assert: isGranted].

	subProc := process getSubProcessTaskNamed: 'embedded-sub-proc' ifNone: [self assert: false].
	isGranted := subProc isGrantedRoleNamed: 'administrator'.
	self assert: isGranted.

	subProc := process getSubProcessTaskNamed: 'reusable-sub-proc' ifNone: [self assert: false].
	isGranted := subProc isGrantedRoleNamed: 'administrator'.
	self assert: isGranted.