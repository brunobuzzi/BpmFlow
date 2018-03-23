other
renderItemDescriptionTitleOn: html
	| jQueryId popUpComponent |

	html output:  selectedLateralItem processName.

	popUpComponent := WAProcessViewerSelector parent: self process: selectedLateralItem.

	jQueryId := self renderJQueryPopupCompositeOn: html width: 450 height: 260 compositeInstance: popUpComponent title: 'Select Process Viewer'.

	html anchor 
		class: 'cursor-pointer';
		"callback: [self downloadProcessMap]; "
		onClick: (html jQuery id: jQueryId) dialog open;
		with: [html image url: (SEWAFIconLibrary / #documentflowchart24Png); 
					title: ('Process Map' translateFor: self session user);
					altText: ('Process Map' translateFor: self session user)].

	selectedLateralItem hasCreationTimer ifTrue: [ | anchorText iconName |
		selectedLateralItem automaticCreationIsActive 
		ifTrue: [anchorText := 'Make Timer Passive'.
					iconName := #clock24Png] 
		ifFalse: [anchorText := 'Make Timer Active'.
					iconName := #utilitiesclock24Png].
		html anchor 
			class: 'cursor-pointer';
			callback: [self switchCreationTimerStatus]; 
			with: [html image url: (SEWAFIconLibrary / iconName); 
						title: (anchorText translateFor: self session user);
						altText: (anchorText translateFor: self session user)].
	].