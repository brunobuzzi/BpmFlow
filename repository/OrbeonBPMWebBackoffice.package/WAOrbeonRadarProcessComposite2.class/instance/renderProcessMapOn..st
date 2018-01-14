export
renderProcessMapOn: html
	| options jQueryId |

	options := Array with: #('Export XPDL' #xpdl) with: #('View SVG' #svg).
	jQueryId := self renderJQuerySelectOptionDialogOn: html buttonsNames: options forActionNamed: 'exportProcess' actionMethod: #exportProcessInstanceAs arguments: #() extent: 420@120.

	html anchor 
		class: 'cursor-pointer margin-right-20px';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].