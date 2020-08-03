components creation
createEmbeddedSubProcesses
	"The receiver create the embedded subprocess"
	| embeddedSubProcs |

	embeddedSubProcs := OrderedCollection new.
	xmlSegment allElementsNamed: 'ActivitySet' do: [:xmlActivitySet | | newWorkflow | 
		newWorkflow := XPDLWorkflowProcess new 
										xmlSegment: xmlActivitySet;
										id: (xmlActivitySet attributeAt: 'Id');
										name: (xmlActivitySet attributeAt: 'Name');
										parentPool: parentPool;
										parentWorkflow: self;
										yourself.
		newWorkflow 
			setGraphicValues; "set the graphics values -x,y, width, height-"
			createActivityNodesFrom: xmlActivitySet; 
			createTransitionNodesFrom: xmlActivitySet;
			setStartAndEndNodes;
			"connectActivitiesToParentLane;"  "embedded suprocess does NOT have lanes by standart"
			connectActivitiesAndTrasitions;
			createExtendedAttributes.
		embeddedSubProcs add: newWorkflow.
	].
	embeddedSubProcs do: [:eachWorkflow1 |
		embeddedSubProcs do: [:eachWorkflow2 | 
			(eachWorkflow2 activitiesAnySatisfy: [:each | eachWorkflow1 getId = each getId])
			ifTrue: [eachWorkflow2 addEmbeddedWorkflow: eachWorkflow1].
		].
	].

	(embeddedSubProcs select: [:each | each parentWorkflowIsIdenticalTo: self]) do: [:each | self addEmbeddedWorkflow: each].