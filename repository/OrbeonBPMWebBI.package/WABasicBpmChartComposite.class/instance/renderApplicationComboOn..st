search area
renderApplicationComboOn: html

	self renderApplicationComboOn: html 
			withApplications: ((self session user getBackofficeApplicationsIn: self session bpmEnvironment) collect: [:each | each applicationName]) asSortedCollection.