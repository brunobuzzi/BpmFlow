process
renderItemDescriptionTitleOn: html
	"The receiver render the summary of the object selected on the Lateral List "
	| iconName toolTip |

	html output:  selectedLateralItem processName. "process name"
	selectedLateralItem isInCorruptedState 
	ifTrue: [html span with: [html strong: ('(Corrupted)' translateIn: self session)]].

	(selectedLateralItem hasFinalized not and: [selectedLateralItem canUnassign and:[(selectedLateralItem user == self session user) and: [selectedLateralItem hasAutomaticTaskAssignation not]]])
	ifTrue: [self renderReleaseAssignmentOn: html].

	iconName := (self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: [#documentorganizationchart24Png] ifFalse: [#documentflowchart24Png].
	toolTip := (self componentValueAt: 'view.svg.map' ifAbsent: [false]) ifTrue: ['View Process Tasks'] ifFalse: ['View Process Map'].
	html anchor 
		class: 'cursor-pointer margin-left-5px';
		callback: [self viewSvgProcessMap]; 
		with: [html image url: (SEWAFIconLibrary / iconName); 
					title: (toolTip translateIn: self session);
					altText: (toolTip translateIn: self session)].

	html anchor 
		class: 'cursor-pointer';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #verybasicdownloadfromcloudfilled24Png); 
					title: ('Download XPDL Bizagi File' translateIn: self session);
					altText: ('Download XPDL Bizagi File' translateIn: self session)].