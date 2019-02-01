other
renderModeIconsOn: html

	html div id: 'internationalization-switch'; with: [html anchor callback: [self switchMode]; 
							with: [html image url: (SEWAFIconLibrary / self getSwitchIconName);
														title: self getSwitchText;
														altText: self getSwitchText.
									].
	].