other
createXpdlComponents

	xmlSegment allElementsNamed: 'Pool' do: [:eachPool | | newPool |
		((eachPool attributeAt: 'Name') = 'Main Process') "this represent the main sheet in Bizagi"
		ifFalse: [newPool := XPDLPoolNode new
										package: self;
										xmlSegment: eachPool;
										sheetName: self getName;
										id: (eachPool attributeAt: 'Id');
										name: (eachPool attributeAt: 'Name');
										workflowId: (eachPool attributeAt: 'Process');
										yourself.
					newPool 
						setGraphicValues; "set the graphics values -x,y, width, height-"
						createLanes; "create lanes in the Pool"
						createWorkflowFrom: xmlSegment; "create the associated Workflow with the Pool "
						setLanesComponents; "add the subcomponents (tasks, gateways, ...) to the it's parent lane"
						setLaneToXpdlObjectsInEmbeddedProcesses. "set <lane> inst var to all xpdl objects of embedded processes"
					self addPool: newPool].
	].