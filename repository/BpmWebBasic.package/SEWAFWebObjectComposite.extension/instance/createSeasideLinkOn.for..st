*bpmwebbasic
createSeasideLinkOn: html for: aBpmArtifactInstance
	"The receiver create a link to a Seaside Component. 
	Used with: WASeasideBpmIntegration component"

	html anchor callback: [self linkToSeasideComponentFor: aBpmArtifactInstance]; 
						with: [html image url: (SEWAFIconLibrary / (self iconFor: aBpmArtifactInstance));
													title: (self imageTitleFor: aBpmArtifactInstance);
													altText: (self imageTitleFor: aBpmArtifactInstance)].