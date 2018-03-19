xpdl download
renderDownloadProcessMapOn: html for: procName
	| jQueryId popUpComponent procDefinition |

	procDefinition := BpmProcessDefinition getLatestProcessDefinitionNamed: procName in: selectedLateralItem applicationName.
	popUpComponent := WAProcessViewerSelector parent: self process: procDefinition.
	jQueryId := self renderJQueryPopupCompositeOn: html width: 450 height: 260 compositeInstance: popUpComponent title: 'Select Process Viewer'.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].