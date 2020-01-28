popups
beBackofficeUserButton

	^(SewafReportColumn 
			renderBlock: [:each :html | | jQueryId |
				jQueryId := self renderJQueryPopupCompositeOn: html width: 550 height: 350 
										composite: WABpmApplicationListPopupComponent 
										title: 'Select Application' 
										domainObject: each  
										arguments: #().
				html anchor "callback: [self removeUser: each]; "
							class: 'cursor-pointer';
							onClick: (html jQuery id: jQueryId) dialog open;
							with: [html image url: (SEWAFIconLibrary / #appspreferencesdesktopuserpassword24Png); 
													title: ('Set as Backoffice Admin' translateIn: self session); 
														altText: ('Set as Backoffice Admin' translateIn: self session)].
			] 
			title: 'Assign to Backoffice')
				sortBlock: nil; 
				cssClass: 'width-6-percent';
			yourself