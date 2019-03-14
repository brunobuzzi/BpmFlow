process
renderCompleteItemOn: html
	| heightClass |

	selectedLateralItem ifNil: [taskListComposite ifNotNil: [:component | component answer]. taskListComposite := nil. ^self ].

	taskListComposite ifNil: [taskListComposite := self defaultTaskListCompositeClass parent: self on: selectedLateralItem].
	
	html render: taskListComposite
"
	html div id: 'item-complete-description'; class: 'lateral-right-component-description';
		with: [self renderItemDescriptionOn: html.].

	html horizontalRule.

	(self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [^self renderSvgProcessMapOn: html].

	heightClass := mainPanel showMainMenu 
							ifFalse: ['item-customized-component-hide-top'] 
							ifTrue: ['item-customized-component-show-top'].

	html div id: 'item-customized-component'; class: heightClass; 
		with: [self renderItemComponentOn: html.].
"