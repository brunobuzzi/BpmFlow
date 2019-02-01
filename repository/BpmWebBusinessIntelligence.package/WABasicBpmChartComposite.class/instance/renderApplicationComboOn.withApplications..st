search area
renderApplicationComboOn: html withApplications: applicationNames

	^self renderGenericComboOn: html withList: (#(''), applicationNames) forVariable: 'application' label: ('Application' translateIn: self session)