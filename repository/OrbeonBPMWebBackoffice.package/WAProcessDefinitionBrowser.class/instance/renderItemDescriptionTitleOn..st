process
renderItemDescriptionTitleOn: html
	| jQueryId options jQueryIdAp list |

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

	"with <BpmNoneAssignationPolicy> there is nothing to Apply. with an autimatic assignation policy --> there is nothing to Apply"
	(selectedLateralItem hasNoneAssignationPolicy or:[selectedLateralItem hasAutomaticTaskAssignation]) ifFalse: [self renderApplyAssignationPolicyOn: html.]. 

	list := BpmTaskAssignationPolicy getAllAssignationPoliciesArray.
	jQueryIdAp := self renderJQueryComboBoxDialogOn: html list: list forActionNamed: 'assignationPolicy' actionMethod: #setAssignationPolicy arguments: #() extent: 430@160.
	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryIdAp) dialog open;
		with: [html image url: (SEWAFIconLibrary / #gamecasino24Png); 
					title: ('Assignation Policy' translateFor: self session user);
					altText: ('Assignation Policy' translateFor: self session user)].