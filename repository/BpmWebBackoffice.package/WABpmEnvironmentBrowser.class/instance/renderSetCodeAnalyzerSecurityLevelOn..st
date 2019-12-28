other
renderSetCodeAnalyzerSecurityLevelOn: html
   | jQueryId |

	jQueryId := self renderJQueryPopupCompositeOn: html width: 350 height: 250 composite: WACodeAnalyzerSecurityLevelPopupComponent title: 'Set Code Analyzer Security Level' domainObject: nil arguments: #().

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #seowebcode24Png); 
												title: ('Set Code Analyzer Level' translateIn: self session); 
												altText: ('Set Code Analyzer Level' translateIn: self session) ]
	]