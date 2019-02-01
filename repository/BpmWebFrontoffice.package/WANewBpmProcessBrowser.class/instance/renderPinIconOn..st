other
renderPinIconOn: html

	(self session user isPinnedProcess: selectedLateralItem) 
	ifTrue: [html anchor 
						callback: [self unpinProcess: selectedLateralItem];
						with: [html image url: (SEWAFIconLibrary / #pin0124Png); 
									altText: ('Unpin Process' translateIn: self session);
									title: ('Unpin Process' translateIn: self session)].
			]
	ifFalse: [html anchor 
						callback: [self pinProcess: selectedLateralItem];
						with: [html image url: (SEWAFIconLibrary / #pin0224Png); 
									altText: ('Pin Process' translateIn: self session);
									title: ('Pin Process' translateIn: self session)].
			]