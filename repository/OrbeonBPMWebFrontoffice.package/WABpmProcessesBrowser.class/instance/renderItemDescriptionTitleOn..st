process
renderItemDescriptionTitleOn: html
	"The receiver render the summary of the object selected on the Lateral List "
	| jQueryId popUpComponent |

	html output:  selectedLateralItem processName. "process name"
	selectedLateralItem isInCorruptedState 
	ifTrue: [html span with: [html strong: ('(Corrupted)' translateFor: self session user)]].

	(selectedLateralItem hasFinalized not and: [selectedLateralItem canUnassign and:[selectedLateralItem user == self session user]])
	ifTrue: [
		html anchor 
			callback: [self freeSelectedAssignment]; 
			with: [html image url: (SEWAFIconLibrary / #gointo24Png); 
						title: ('Release Task' translateFor: self session user);
						altText: ('Release Task' translateFor: self session user)]].

	popUpComponent := WAProcessViewerSelector parent: self process: selectedLateralItem.
	jQueryId := self renderJQueryPopupCompositeOn: html width: 450 height: 260 compositeInstance: popUpComponent title: 'Select Process Viewer'.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].