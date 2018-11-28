other
renderPinIconOn: html

	(self session user isPinnedProcess: selectedLateralItem) 
	ifTrue: [html anchor 
						callback: [self unpinProcess: selectedLateralItem];
						with: [html image url: (SEWAFIconLibrary / #pin0124Png); 
									altText: ('Unpin Process' translateFor: self session user);
									title: ('Unpin Process' translateFor: self session user)].
			]
	ifFalse: [html anchor 
						callback: [self pinProcess: selectedLateralItem];
						with: [html image url: (SEWAFIconLibrary / #pin0224Png); 
									altText: ('Pin Process' translateFor: self session user);
									title: ('Pin Process' translateFor: self session user)].
			]