external components
renderOrbeonLinkIconOn: html for: aBpmTaskInstance

	aBpmTaskInstance processIsPausedOrAborted ifTrue: [^self]. "if the process is paused or aborted no operation is possible with the task <aBpmTaskInstance>"

	"a granted user with edit permission"
	"a user that has edit permission in other part of the process and does NOT have it this Transition, is granted to READ."
	(((aBpmTaskInstance isGrantedUser: self session user) or: [aBpmTaskInstance process hasReadAccess: self session user]) and: [(aBpmTaskInstance assignment == model) or: [aBpmTaskInstance hasForm]])
	ifTrue: [^self createOrbeonLinkOn: html for: aBpmTaskInstance].