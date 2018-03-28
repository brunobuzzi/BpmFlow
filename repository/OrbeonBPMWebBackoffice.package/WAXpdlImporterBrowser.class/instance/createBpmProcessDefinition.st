import
createBpmProcessDefinition
	| messages subMenu tempProcesses processes topProcesses |

	"create the BpmProcessDefinition"
	tempProcesses := processGenerator generateAllProcess.

	processGenerator hasImmutableProcess ifTrue: [].

	processes := processGenerator generateProcessesAndStoreOnCache.

	topProcesses := processes select: [:each | each isTopProcess].
	topProcesses ifEmpty: [^self].
	^self

	"redirect from the current page the process definition page"

"	messages := OrderedCollection new.

	subMenu := mainPanel selectSubTabNamed: 'List Processes Definitions' inMenu: 'Processes' ifNone: [^nil].

	messages 
		add: (MessageSend receiver: mainPanel selector: #openDefinitionsManager);
		add: (MessageSend receiver: mainPanel selector: #setSearchApplied);
		add: (MessageSend receiver: mainPanel selector: #lateralCollection: arguments: (Array with: topProcesses));
		add: (MessageSend receiver: mainPanel selector: #searchResult: arguments: (Array with: topProcesses));
		add: (MessageSend receiver: mainPanel selector: #selectedLateralItem: argument: topProcesses first).

	subMenu addMessagesToSend: messages."