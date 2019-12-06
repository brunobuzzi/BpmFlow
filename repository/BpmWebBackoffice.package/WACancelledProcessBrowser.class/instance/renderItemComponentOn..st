render
renderItemComponentOn: html

	(self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [^self renderSvgProcessMapOn: html].

	selectedLateralItem ifNil: [taskListComposite ifNotNil: [:component | component answer]. taskListComposite := nil. ^self ].

	taskListComposite 
	ifNil: [taskListComposite := (self defaultTaskListCompositeClass parent: self) model: selectedLateralItem]
	ifNotNil: [(selectedLateralItem == taskListComposite model) ifFalse: [taskListComposite model: selectedLateralItem]].
	
	html div id: 'item-customized-component'; with: [html render: taskListComposite].