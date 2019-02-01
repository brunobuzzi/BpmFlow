process
renderToggleOn: html
	| iconName |

	iconName := selectedLateralItem isAnonymousStartEnabled
		ifTrue: [#userred24Png] 
		ifFalse: [#usergreen24Png].
	
	html anchor callback: [self toggleAnonymousStart]; 
					with: [html image url: (SEWAFIconLibrary / iconName); 
											title: ('Toggle Anonymous Start' translateIn: self session); 
											altText: ('Toggle Anonymous Start' translateIn: self session)]