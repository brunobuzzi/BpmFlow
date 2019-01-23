process
renderItemDescriptionTitleOn: html
	| jQueryIdAp list lockIcon availableIcon |

	html output:  selectedLateralItem processName.

	html anchor 
		class: 'cursor-pointer';
		callback: [self downloadXPDLFile];
		with: [html image url: (SEWAFIconLibrary / #verybasicdownloadfromcloudfilled24Png); 
					title: ('Download XPDL Bizagi File' translateFor: self session user);
					altText: ('Download XPDL Bizagi File' translateFor: self session user)].

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

	html anchor 
		class: 'cursor-pointer';
		callback: [self exportInstancesToCSV]; 
		with: [html image url: (SEWAFIconLibrary / #filescsv24Png); 
					title: ('Export Instances to CSV' translateFor: self session user);
					altText: ('Export Instances to CSV' translateFor: self session user)].

	selectedLateralItem canBeStartedByAnonymousForm ifTrue: [self renderToggleOn: html].

	self session user isBackofficeUserAndAdmin ifFalse: [^self].

	lockIcon := selectedLateralItem isImmutable ifTrue: [#locklock24Png] ifFalse: [#lockunlock24Png].
	html anchor 
		class: 'cursor-pointer';
		callback: [self switchImmutableValue]; 
		with: [html image url: (SEWAFIconLibrary / lockIcon); 
					title: ('Switch Immutable Value' translateFor: self session user);
					altText: ('Switch Immutable Value' translateFor: self session user)].

	availableIcon := selectedLateralItem isAvailable ifTrue: [#switchoff24Png] ifFalse: [#switchon24Png].
	html anchor 
		class: 'cursor-pointer margin-right-5px';
		callback: [self switchAvailableValue]; 
		with: [html image url: (SEWAFIconLibrary / availableIcon); 
					title: ('Switch Is Available' translateFor: self session user);
					altText: ('Switch Is Available' translateFor: self session user)].

	(selectedLateralItem isAvailable and: [selectedLateralItem hasCreationTimer]) ifTrue: [ | anchorText iconName |
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