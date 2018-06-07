search area
renderApplicationComboOn: html

	^self renderGenericActiveComboOn: html 
			withList: (#(''), (self session user getBackofficeApplications collect: [:each | each applicationName]) asSortedCollection) 
			forVariable: 'application' 
			label: ('Application' translateFor: self session user)