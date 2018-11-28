other
takeTaskAndGo: aBpmTaskAssignment
	"The current user take this task and then go to the process browser"
	| messages subMenu |

	aBpmTaskAssignment checkIfIsStillAvailableToTake
	ifFalse: [^self searchAll]. 

	self session user take: aBpmTaskAssignment.
	self answer.

	messages := OrderedCollection new.

	subMenu := mainPanel selectSubTabNamed: 'Current Processes' inMenu: 'My Processes' ifNone: [^nil].

	messages 
		add: (MessageSend receiver: mainPanel selector: #showCurrentProcess: argument: (OrderedCollection with: aBpmTaskAssignment));
		add: (MessageSend receiver: mainPanel selector: #selectedLateralItem: argument: aBpmTaskAssignment).

	subMenu addMessagesToSend: messages.