render
renderApplicationComboOn: html withApplications: applicationNames

	^self renderGenericComboOn: html withList: (#(''), applicationNames) forVariable: 'application' label: ('Application' translateFor: self session user)