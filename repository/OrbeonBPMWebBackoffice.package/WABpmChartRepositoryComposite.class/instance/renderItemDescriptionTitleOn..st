subclass responsibility
renderItemDescriptionTitleOn: html
	| jQueryId |

	html output:  selectedLateralItem name.

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'deleteReport' actionMethod: #removeSelectedReport.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #remove24Png); 
					title: ('Delete Report' translateFor: self session user);
					altText: ('Delete report' translateFor: self session user)]