other
renderTransitionDataOn: html for: aBpmArtifactInstance
	| jsEcObject |

	jsEcObject := self createEcTaskJsObjectFor: ('t',aBpmArtifactInstance id printString) imageId: ('i',aBpmArtifactInstance id printString).
	jsEcObject callInitIconFunction; callExpandCollapseElementFunction.

	html anchor 
		class: 'process-transition-icon-collapse cursor-pointer';
		onClick: jsEcObject;
		with: [html image id: ('i', aBpmArtifactInstance id printString)].


	html header with: [html strong: aBpmArtifactInstance printFormLargeNameForWebButton].
	html header with: [html strong: ('Task Data' translateIn: self session)].

	aBpmArtifactInstance isTask 
	ifTrue: [^self renderTransitionFormDataOn: html for: aBpmArtifactInstance].

	aBpmArtifactInstance isSubprocessDefinition
	ifTrue: [^self renderTransitionSubProcessDataOn: html for: aBpmArtifactInstance].