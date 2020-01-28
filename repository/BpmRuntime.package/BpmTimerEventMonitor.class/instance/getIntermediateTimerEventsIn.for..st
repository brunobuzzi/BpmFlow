timer intermediate
getIntermediateTimerEventsIn: aBpmEnvironment for: aBpmUser
	"The receiver answer a collection of all intermediate <BpmEventInstance> active in the System that <aBpmUser> has access to."
	| currentMonitoredEvents |

	currentMonitoredEvents := self getAllIntermediateTimerEventsIn: aBpmEnvironment.

	(aBpmUser isBackofficeUserAndAdminIn: aBpmEnvironment) ifTrue: [^currentMonitoredEvents].

	^currentMonitoredEvents select: [:eventInstance | eventInstance isGrantedUser: aBpmUser]