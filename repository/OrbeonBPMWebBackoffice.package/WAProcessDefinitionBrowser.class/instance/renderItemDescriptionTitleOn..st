process
renderItemDescriptionTitleOn: html
	| jQueryId options jQueryIdAp apOptions |

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

	apOptions := BpmTaskAssignationPolicy getAllAssignationPoliciesArray.
	jQueryIdAp := self renderJQuerySelectOptionDialogOn: html buttonsNames: apOptions forActionNamed: 'assignationPolicy' actionMethod: #setAssignationPolicy arguments: #() extent: 860@163.
	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryIdAp) dialog open;
		with: [html image url: (SEWAFIconLibrary / #gamecasino24Png); 
					title: ('Assignation Policy' translateFor: self session user);
					altText: ('Assignation Policy' translateFor: self session user)].