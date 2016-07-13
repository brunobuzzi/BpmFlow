import
createBpmProcessDefinitionFrom: aBpmProcessGenerator
	| messages subMenu processes topProcesses |

	"create the BpmProcessDefinition"
	processes := (aBpmProcessGenerator generateAllProcess collect: [:each | each addToCache]) asArray.
	topProcesses := processes select: [:each | each isTopProcess].
	topProcesses ifEmpty: [^self].
	"redirect from the current page the process definition page"
	messages := OrderedCollection new.

	subMenu := mainPanel selectSubTabNamed: 'Manage Processes Definitions' inMenu: 'Processes' ifNone: [^nil].

	messages 
		add: (MessageSend receiver: mainPanel selector: #openDefinitionsManager);
		add: (MessageSend receiver: mainPanel selector: #setSearchApplied);
		add: (MessageSend receiver: mainPanel selector: #lateralCollection: arguments: (Array with: topProcesses));
		add: (MessageSend receiver: mainPanel selector: #searchResult: arguments: (Array with: topProcesses));
		add: (MessageSend receiver: mainPanel selector: #selectedLateralItem: argument: topProcesses first).

	subMenu addMessagesToSend: messages.