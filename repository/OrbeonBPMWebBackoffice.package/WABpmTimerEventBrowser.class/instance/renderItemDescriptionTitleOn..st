other
renderItemDescriptionTitleOn: html
	| jQueryId options |

	html output:  selectedLateralItem processName.

	options := Array with: #('Export XPDL' #xpdl) with: #('View SVG' #svg).

	jQueryId := self renderJQuerySelectOptionDialogOn: html buttonsNames: options forActionNamed: 'exportProcess' actionMethod: #exportProcessDefinitionAs arguments: #() extent: 420@120.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].