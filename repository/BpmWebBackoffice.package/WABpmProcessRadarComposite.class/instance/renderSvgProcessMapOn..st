tasks details
renderSvgProcessMapOn: html

	self renderProcessMapOn: html.

	selectedObject ifNil: [taskListComposite ifNotNil: [:component | component answer]. taskListComposite := nil. ^self ].

	taskListComposite 
	ifNil: [taskListComposite := (self defaultTaskListCompositeClass parent: self) model: selectedObject]
	ifNotNil: [(selectedObject == taskListComposite model) ifFalse: [taskListComposite model: selectedObject]].
	
	html div id: 'item-customized-component'; with: [html render: taskListComposite].