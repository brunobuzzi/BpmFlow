other
testRolesResponsibility3
	| process tasks isGranted |

	process := self getEmbedded02Process.
	
	tasks := #('script-embedded-02').
	tasks do: [:each | 
		isGranted := (process getScriptNamed: each ifNone: [self assert: false]) isGrantedRoleNamed: 'administrator'.
		self assert: isGranted].