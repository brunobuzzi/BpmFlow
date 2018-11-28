process
renderToggleOn: html
	| iconName |

	iconName := selectedLateralItem isAnonymousStartEnabled
		ifTrue: [#userred24Png] 
		ifFalse: [#usergreen24Png].
	
	html anchor callback: [self toggleAnonymousStart]; 
					with: [html image url: (SEWAFIconLibrary / iconName); 
											title: ('Toggle Anonymous Start' translateFor: self session user); 
											altText: ('Toggle Anonymous Start' translateFor: self session user)]