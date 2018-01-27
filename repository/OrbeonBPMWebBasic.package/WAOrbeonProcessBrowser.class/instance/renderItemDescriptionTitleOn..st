process
renderItemDescriptionTitleOn: html
	"The receiver render the summary of the object selected on the Lateral List "
	| jQueryId options |

	html output:  selectedLateralItem processName. "process name"
	selectedLateralItem isInCorruptedState 
	ifTrue: [html span with: [html strong: ('(Corrupted)' translateFor: self session user)]].

	(selectedLateralItem hasFinalized not and: [selectedLateralItem canUnassign])
	ifTrue: [
		html anchor 
			callback: [self freeSelectedAssignment]; 
			with: [html image url: (SEWAFIconLibrary / #gointo24Png); 
						title: ('Release Task' translateFor: self session user);
						altText: ('Release Task' translateFor: self session user)]].

	options := Array with: #('Export XPDL' #xpdl) with: #('View SVG' #svg).
	jQueryId := self renderJQuerySelectOptionDialogOn: html buttonsNames: options forActionNamed: 'exportProcess' actionMethod: #exportProcessInstanceAs arguments: #() extent: 420@120.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].