assignation policy
renderApplyAssignationPolicyOn: html
	| jQueryApplyId |

	jQueryApplyId := self renderJQueryConfirmationDialogOn: html title: 'Apply Policy' forActionNamed: 'applyAssignationPolicy' actionMethod: #applyAssignationPolicy.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryApplyId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #actionsuserproperties24Png); 
					title: ('Apply Policy' translateIn: self session);
					altText: ('Apply Policy' translateIn: self session)].