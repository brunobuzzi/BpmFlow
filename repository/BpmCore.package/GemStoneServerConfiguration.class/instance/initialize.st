other
initialize

	super initialize.

	timersTimespan := 600. "SECONDS"

	"Intitally we set the user as Local not in LDAP"
	(Smalltalk includesKey: #OrbeonWebLocalLogin) ifTrue: [self setLocalForOrbeon].
	(Smalltalk includesKey: #BpmFlowWebLocalLogin) ifTrue: [self setLocalForProcesses].