link to components
createSeasideLinkOn: html for: aBpmArtifactInstance

	html anchor callback: [self linkToSeasideComponentFor: aBpmArtifactInstance]; 
						with: [html image url: (SEWAFIconLibrary / (self iconFor: aBpmArtifactInstance));
													title: (self imageTitleFor: aBpmArtifactInstance);
													altText: (self imageTitleFor: aBpmArtifactInstance)].