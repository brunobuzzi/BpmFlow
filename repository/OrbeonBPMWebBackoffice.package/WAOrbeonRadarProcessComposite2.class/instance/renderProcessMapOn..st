export
renderProcessMapOn: html
	| popUpComponent jQueryId |

	popUpComponent := WAProcessViewerSelector parent: self process: selectedObject.
	jQueryId := self renderJQueryPopupCompositeOn: html width: 450 height: 260 compositeInstance: popUpComponent title: 'Select Process Viewer'.

	html anchor 
		class: 'cursor-pointer margin-right-20px';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].