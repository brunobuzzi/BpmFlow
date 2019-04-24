render transitions
renderTransitionDataOn: html for: aBpmArtifactInstance
	| divId imageId jsCallExpandCollapse jsCallSetIcon |

	divId := '''t', aBpmArtifactInstance id printString, ''''.
	imageId := 'i', aBpmArtifactInstance id printString.
	jsCallExpandCollapse := 'expandCollapse(', divId, ')'.
	jsCallSetIcon := 'setExpandCollapseIcon(', divId, ',''', imageId, ''')'.
	html anchor 
		class: 'process-transition-icon-collapse';
		onClick: jsCallExpandCollapse, ';', jsCallSetIcon;
		with: [html image 
							id: ('i', aBpmArtifactInstance id printString)";
							url: (SEWAFIconLibrary / (self collapseIconFor: aBpmArtifactInstance));
							title: (self collapseTitleFor: aBpmArtifactInstance);
							altText: (self collapseTitleFor: aBpmArtifactInstance)"].
	html script: jsCallSetIcon.

	html header with: [html strong: aBpmArtifactInstance printFormLargeNameForWebButton].
	html header with: [html strong: ('Task Data' translateIn: self session)].

	((self displayModeFor: aBpmArtifactInstance) = #collapsed) ifTrue: [^self].

	aBpmArtifactInstance isTask 
	ifTrue: [^self renderTransitionFormDataOn: html for: aBpmArtifactInstance].

	aBpmArtifactInstance isSubprocessDefinition
	ifTrue: [^self renderTransitionSubProcessDataOn: html for: aBpmArtifactInstance].