render
renderApplicationComboOn: html

	self renderApplicationComboOn: html withApplications: (self session user getBackofficeApplications collect: [:each | each applicationName]) asSortedCollection.