other
createStateColumn

	^(SewafReportColumn 
			renderBlock: [:each :html |    | jQueryId |
					each isRunningWithException
					ifTrue: [	jQueryId := self renderJQueryPopupCompositeOn: html width: 550 height: 350 composite: WAEvaluationFailedListPopupComponent title: 'Failed Evaluations' domainObject: each getFailedEvaluations arguments: #().
						html anchor
									class: 'cursor-pointer';
									onClick: (html jQuery id: jQueryId) dialog open;
									with: each stateName.
					]
					ifFalse: [html span with: each stateName]
			]
			title: 'State') 
				sortBlock: nil; 
				cssClass: 'width-6-percent';
				yourself