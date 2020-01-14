top banner
renderFailedEvaluationAnchorOn: html
	| jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 550 height: 350 composite: WAEvaluationFailedListPopupComponent title: 'Failed Evaluations' domainObject: model process getFailedEvaluations arguments: #().

	html anchor
			class: 'cursor-pointer float-left';
			onClick: (html jQuery id: jQueryId) dialog open;
			with: [html image url: (SEWAFIconLibrary / #warning24Png); 
													title: ('View Failed Evaluations' translateIn: self session); 
													altText: ('View Failed Evaluations' translateIn: self session).]