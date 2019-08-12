process
renderCompleteItemOn: html
	| heightClass |

	selectedLateralItem ifNil: [taskListComposite ifNotNil: [:component | component answer]. taskListComposite := nil. ^self ].

	taskListComposite 
	ifNil: [taskListComposite := (self defaultTaskListCompositeClass parent: self) model: selectedLateralItem]
	ifNotNil: [(selectedLateralItem == taskListComposite model) ifFalse: [taskListComposite model: selectedLateralItem]].

	heightClass := mainPanel showMainMenu 
							ifFalse: ['item-customized-component-hide-top'] 
							ifTrue: ['item-customized-component-show-top'].
	
	html div id: 'item-customized-component'; class: heightClass; with: [html render: taskListComposite].