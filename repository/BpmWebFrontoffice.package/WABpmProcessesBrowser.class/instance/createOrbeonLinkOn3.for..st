link to components
createOrbeonLinkOn3: html for: aBpmArtifactInstance

	"when a role has more than one active task with permission --> the edit and new icon is showed only with the properly assignment
 (aBpmArtifactInstance == selectedLateralItem task)"
	(((aBpmArtifactInstance == selectedLateralItem task) and: [aBpmArtifactInstance isDone not]) or: [aBpmArtifactInstance isDone])
	ifTrue: [
		html anchor callback: [self linkToOrbeonFormFor: aBpmArtifactInstance]; 
							with: [html image url: (SEWAFIconLibrary / (self iconFor: aBpmArtifactInstance));
														title: (self imageTitleFor: aBpmArtifactInstance);
														altText: (self imageTitleFor: aBpmArtifactInstance)].
	].
	(aBpmArtifactInstance hasForm and:[(aBpmArtifactInstance isGrantedUser: self session user)])
	ifTrue: [ html anchor callback: [self linkToOrbeonPdfFor: aBpmArtifactInstance];
							target: '_blank'; "open the PDF in a new tab or page"
							with: [html image url: (SEWAFIconLibrary / #pdf32Png);
														title: ('View PDF' translateFor: self session user);
														altText: ('View PDF' translateFor: self session user)].
	]
	"if the transition is done and has expected results --> we render an icon to show results summary"

"	(anOrbeonFormTransition isDone and:[anOrbeonFormTransition hasExpectedResult])
	ifTrue: [self renderExpectedResultIcon: html for: anOrbeonFormTransition]"