operations
listProcessesDefinitions

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				jQueryId := self renderJQueryPopupCompositeOn: html width: 550 height: 350 
										composite: WABpmProcessListPopupComponent 
										title: 'Processes Definitions' 
										domainObject: each  
										arguments: #().
					html anchor "callback: [self removeRol: each]; "
								class: 'cursor-pointer';
								onClick: (html jQuery id: jQueryId) dialog open;
								with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
														title: ('View Processes' translateIn: self session); 
														altText: ('View Processes' translateIn: self session).]
			]
			title: 'List') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself