component creation
createWorkflowFrom: aXMLDocument
	"The receiver creates all workflows contained in XML document <aXMLDocument>"

	aXMLDocument allElementsNamed: 'WorkflowProcess' do: [:xmlWorkflow | | newWorkflow |
		((xmlWorkflow attributeAt: 'Id') = workflowId)
		ifTrue: [newWorkflow := XPDLWorkflowProcess new 
								xmlSegment: xmlWorkflow;
								id: (xmlWorkflow attributeAt: 'Id');
								name: (xmlWorkflow attributeAt: 'Name');
								yourself.
					self workflow: newWorkflow.
					newWorkflow 
						setGraphicValues; "set the graphics values -x,y, width, height-"
						createActivityNodes; 
						createTransitionNodes;
						setStartAndEndNodes;
						connectActivitiesToParentLane;
						connectActivitiesAndTrasitions;
						createEmbeddedSubProcesses;
						attachEventsToTasks.
		].
	].

	^lanes